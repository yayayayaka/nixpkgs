{pkgs ? import <nixpkgs> {
    inherit system;
  }, system ? builtins.currentSystem, noDev ? false}:

let
  composerEnv = import ./composer-env.nix {
    inherit (pkgs) stdenv lib writeTextFile fetchurl unzip;
    # Requires PHP >= 7.4 and PHP < 8.0 as of v5.3.6
    # https://snipe-it.readme.io/docs/requirements
    php = pkgs.php74;
    phpPackages = pkgs.php74Packages;
  };
in
import ./php-packages.nix {
  inherit composerEnv noDev;
  inherit (pkgs) fetchurl fetchgit fetchhg fetchsvn;
}

