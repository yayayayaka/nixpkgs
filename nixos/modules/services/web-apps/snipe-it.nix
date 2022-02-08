{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.services.snipe-it;
  snipe-it = pkgs.snipe-it.override {
    dataDir = cfg.dataDir;
  };
  db = cfg.database;
  mail = cfg.mail;

  user = cfg.user;
  group = cfg.group;

  # shell script for local administration
  artisan = pkgs.writeScriptBin "snipe-it" ''
    #! ${pkgs.runtimeShell}
    cd ${snipe-it}
    sudo=exec
    if [[ "$USER" != ${user} ]]; then
      sudo='exec /run/wrappers/bin/sudo -u ${user}'
    fi
    $sudo ${pkgs.php}/bin/php artisan $*
  '';


in {
  options.services.snipe-it = {

    enable = mkEnableOption "A free open source IT asset/license management system";

    user = mkOption {
      default = "snipeit";
      description = "User snipe-it runs as.";
      type = types.str;
    };

    group = mkOption {
      default = "snipeit";
      description = "Group snipe-it runs as.";
      type = types.str;
    };

    appKeyFile = mkOption {
      description = ''
        A file containing the AppKey.
        Used for encryption where needed. Can be generated with <code>head -c 32 /dev/urandom| base64</code>.
      '';
      example = "/run/keys/snipe-it/appkey";
      type = types.path;
    };

    hostName = mkOption {
      description = ''
        FQDN of the snipe-it instance.
        If you change this in the future you may need to run a command to update stored URLs in the database. Command example: <code>php artisan snipe-it:update-url https://old.example.com https://new.example.com</code>
      '';
      example = "example.com";
      type = types.str;
    };

    cacheDir = mkOption {
      description = "snipe-it cache directory";
      default = "/var/cache/snipe-it";
      type = types.path;
    };

    dataDir = mkOption {
      description = "snipe-it data directory";
      default = "/var/lib/snipe-it";
      type = types.path;
    };

    database = {
      host = mkOption {
        type = types.str;
        default = "localhost";
        description = "Database host address.";
      };
      port = mkOption {
        type = types.port;
        default = 3306;
        description = "Database host port.";
      };
      name = mkOption {
        type = types.str;
        default = "snipeit";
        description = "Database name.";
      };
      user = mkOption {
        type = types.str;
        default = user;
        defaultText = literalExpression "user";
        description = "Database username.";
      };
      passwordFile = mkOption {
        type = with types; nullOr path;
        default = null;
        example = "/run/keys/snipe-it/dbpassword";
        description = ''
          A file containing the password corresponding to
          <option>database.user</option>.
        '';
      };
      createLocally = mkOption {
        type = types.bool;
        default = false;
        description = "Create the database and database user locally.";
      };
    };

    mail = {
      driver = mkOption {
        type = types.enum [ "smtp" "sendmail" ];
        default = "smtp";
        description = "Mail driver to use.";
      };
      host = mkOption {
        type = types.str;
        default = "localhost";
        description = "Mail host address.";
      };
      port = mkOption {
        type = types.port;
        default = 1025;
        description = "Mail host port.";
      };
      encryption = mkOption {
        type = with types; nullOr (enum [ "tls" "ssl" ]);
        default = null;
        description = "SMTP encryption mechanism to use.";
      };
      user = mkOption {
        type = with types; nullOr str;
        default = null;
        example = "snipeit";
        description = "Mail username.";
      };
      passwordFile = mkOption {
        type = with types; nullOr path;
        default = null;
        example = "/run/keys/snipe-it/mailpassword";
        description = ''
          A file containing the password corresponding to
          <option>mail.user</option>.
        '';
      };
      backupNotificationAddress = mkOption {
        type = types.str;
        default = cfg.mail.from.address;
        description = "Email Address to send Backup Notifications to.";
      };
      from = {
        name = mkOption {
          type = types.str;
          default = "Snipe-IT Asset Management";
          description = "Mail \"from\" name.";
        };
        address = mkOption {
          type = types.str;
          default = "mail@snipe-itapp.com";
          description = "Mail \"from\" address.";
        };
      };
      replyTo = {
        name = mkOption {
          type = types.str;
          default = cfg.mail.from.name;
          description = "Mail \"reply-to\" name.";
        };
        address = mkOption {
          type = types.str;
          default = cfg.mail.from.address;
          description = "Mail \"reply-to\" address.";
        };
      };
    };

    maxUploadSize = mkOption {
      type = types.str;
      default = "18M";
      example = "1G";
      description = "The maximum size for uploads (e.g. images).";
    };

    poolConfig = mkOption {
      type = with types; attrsOf (oneOf [ str int bool ]);
      default = {
        "pm" = "dynamic";
        "pm.max_children" = 32;
        "pm.start_servers" = 2;
        "pm.min_spare_servers" = 2;
        "pm.max_spare_servers" = 4;
        "pm.max_requests" = 500;
      };
      description = ''
        Options for the snipe-it PHP pool. See the documentation on <literal>php-fpm.conf</literal>
        for details on configuration directives.
      '';
    };

    nginx = mkOption {
      type = types.submodule (
        recursiveUpdate
          (import ../web-servers/nginx/vhost-options.nix { inherit config lib; }) {}
      );
      default = {};
      example = literalExpression ''
        {
          serverAliases = [
            "snipe-it.''${config.networking.domain}"
          ];
          # To enable encryption and let let's encrypt take care of certificate
          forceSSL = true;
          enableACME = true;
        }
      '';
      description = ''
        With this option, you can customize the nginx virtualHost settings.
      '';
    };

    extraConfig = mkOption {
      type = types.nullOr types.lines;
      default = null;
      example = ''
        ALLOWED_IFRAME_HOSTS="https://example.com"
        WKHTMLTOPDF=/home/user/bins/wkhtmltopdf
      '';
      description = ''
        Lines to be appended verbatim to the snipe-it configuration.
        Refer to <link xlink:href="https://www.snipe-itapp.com/docs/"/> for details on supported values.
      '';
    };
  };

  config = mkIf cfg.enable {

    assertions = [
      { assertion = db.createLocally -> db.user == user;
        message = "services.snipe-it.database.user must be set to ${user} if services.snipe-it.database.createLocally is set true.";
      }
      { assertion = db.createLocally -> db.passwordFile == null;
        message = "services.snipe-it.database.passwordFile cannot be specified if services.snipe-it.database.createLocally is set to true.";
      }
    ];

    environment.systemPackages = [ artisan ];

    services.mysql = mkIf db.createLocally {
      enable = true;
      package = mkDefault pkgs.mariadb;
      ensureDatabases = [ db.name ];
      ensureUsers = [
        { name = db.user;
          ensurePermissions = { "${db.name}.*" = "ALL PRIVILEGES"; };
        }
      ];
    };

    services.phpfpm.pools.snipe-it = {
      inherit user group;
      phpPackage = pkgs.php74;
      phpOptions = ''
        post_max_size = ${cfg.maxUploadSize}
        upload_max_filesize = ${cfg.maxUploadSize}
      '';
      settings = {
        "listen.mode" = "0660";
        "listen.owner" = user;
        "listen.group" = group;
      } // cfg.poolConfig;
    };

    services.nginx = {
      enable = mkDefault true;
      virtualHosts."${cfg.hostName}" = mkMerge [ cfg.nginx {
        root = mkForce "${snipe-it}/public";
        extraConfig = optionalString (cfg.nginx.addSSL || cfg.nginx.forceSSL || cfg.nginx.onlySSL || cfg.nginx.enableACME) "fastcgi_param HTTPS on;";
        locations = {
          "/" = {
            index = "index.php";
            extraConfig = ''try_files $uri $uri/ /index.php?$query_string;'';
          };
          "~ \.php$" = {
            extraConfig = ''
              try_files $uri $uri/ /index.php?$query_string;
              include ${config.services.nginx.package}/conf/fastcgi_params;
              fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
              fastcgi_param REDIRECT_STATUS 200;
              fastcgi_pass unix:${config.services.phpfpm.pools."snipe-it".socket};
              ${optionalString (cfg.nginx.addSSL || cfg.nginx.forceSSL || cfg.nginx.onlySSL || cfg.nginx.enableACME) "fastcgi_param HTTPS on;"}
            '';
          };
          "~ \.(js|css|gif|png|ico|jpg|jpeg)$" = {
            extraConfig = "expires 365d;";
          };
        };
      }];
    };

    systemd.services.snipe-it-setup = {
      description = "Preperation tasks for snipe-it";
      before = [ "phpfpm-snipe-it.service" ];
      after = optional db.createLocally "mysql.service";
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        Type = "oneshot";
        User = user;
        WorkingDirectory = snipe-it;
      };
      script = ''
        set -xeo pipefail
        umask 077
        # create .env file
        cat <<__EOF > "${cfg.dataDir}/.env"
        APP_ENV=production
        APP_KEY=base64:$(head -n1 ${cfg.appKeyFile})
        APP_URL=https://${cfg.hostName}
        DB_HOST=${db.host}
        DB_PORT=${toString db.port}
        DB_DATABASE=${db.name}
        DB_USERNAME=${db.user}
        ${optionalString (db.passwordFile != null) "DB_PASSWORD=$(head -n1 ${db.passwordFile})"}
        MAIL_DRIVER=${mail.driver}
        MAIL_FROM_NAME='${mail.from.name}'
        MAIL_FROM_ADDR=${mail.from.address}
        MAIL_REPLYTO_NAME='${mail.from.name}'
        MAIL_REPLYTO_ADDR=${mail.from.address}
        MAIL_BACKUP_NOTIFICATION_ADDRESS=${mail.backupNotificationAddress}
        MAIL_HOST=${mail.host}
        MAIL_PORT=${toString mail.port}
        ${optionalString (mail.user != null) "MAIL_USERNAME=${mail.user}"}
        ${optionalString (mail.passwordFile != null) "MAIL_PASSWORD=$(head -n1 ${mail.passwordFile})"}
        ${optionalString (mail.encryption != null) "MAIL_ENCRYPTION=${mail.encryption}"}
        APP_SERVICES_CACHE=${cfg.cacheDir}/services.php
        APP_PACKAGES_CACHE=${cfg.cacheDir}/packages.php
        APP_CONFIG_CACHE=${cfg.cacheDir}/config.php
        APP_ROUTES_CACHE=${cfg.cacheDir}/routes-v7.php
        APP_EVENTS_CACHE=${cfg.cacheDir}/events.php
        ${optionalString (cfg.nginx.addSSL || cfg.nginx.forceSSL || cfg.nginx.onlySSL || cfg.nginx.enableACME) "SESSION_SECURE_COOKIE=true"}
        ${toString cfg.extraConfig}
        __EOF

        # migrate db
        ${pkgs.php}/bin/php artisan migrate --force

        # clear & create caches (needed in case of update)
        ${pkgs.php}/bin/php artisan cache:clear
        ${pkgs.php}/bin/php artisan config:clear
        ${pkgs.php}/bin/php artisan view:clear
        ${pkgs.php}/bin/php artisan config:cache
        ${pkgs.php}/bin/php artisan passport:install
        #${pkgs.php}/bin/php artisan route:cache
        #${pkgs.php}/bin/php artisan view:cache
      '';
    };

    systemd.tmpfiles.rules = [
      "d ${cfg.cacheDir}                           0700 ${user} ${group} - -"
      "d ${cfg.dataDir}                            0710 ${user} ${group} - -"
      "d ${cfg.dataDir}/bootstrap                  0750 ${user} ${group} - -"
      "d ${cfg.dataDir}/bootstrap/cache            0750 ${user} ${group} - -"
      "d ${cfg.dataDir}/public                     0750 ${user} ${group} - -"
      "d ${cfg.dataDir}/public/uploads             0750 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage                    0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/app                0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/fonts              0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/framework          0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/framework/cache    0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/framework/sessions 0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/framework/views    0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/logs               0700 ${user} ${group} - -"
      "d ${cfg.dataDir}/storage/uploads            0700 ${user} ${group} - -"
    ];

    users = {
      users = mkIf (user == "snipeit") {
        snipeit = {
          inherit group;
          isSystemUser = true;
        };
        "${config.services.nginx.user}".extraGroups = [ group ];
      };
      groups = mkIf (group == "snipeit") {
        snipeit = {};
      };
    };

  };

  meta.maintainers = with maintainers; [ yayayayaka ];
}
