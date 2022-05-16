{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "alek13/slack" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "alek13-slack-9222449402df4e1e57d7850be87898b2c99803bd";
        src = fetchurl {
          url = "https://api.github.com/repos/php-slack/slack/zipball/9222449402df4e1e57d7850be87898b2c99803bd";
          sha256 = "02kxal8066rlq4002qf36yfq8i3pafrrlbspqbvh3vxhnzzj2f2k";
        };
      };
    };
    "arietimmerman/laravel-scim-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "arietimmerman-laravel-scim-server-10be959682d47bb8c78255168262a7cbb7586146";
        src = fetchurl {
          url = "https://api.github.com/repos/grokability/laravel-scim-server/zipball/10be959682d47bb8c78255168262a7cbb7586146";
          sha256 = "0sak3h8hp6wdjpkq3y8a7q1gp6h6a7wgdcj2iqag633wvhbzsx56";
        };
      };
    };
    "asm89/stack-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "asm89-stack-cors-73e5b88775c64ccc0b84fb60836b30dc9d92ac4a";
        src = fetchurl {
          url = "https://api.github.com/repos/asm89/stack-cors/zipball/73e5b88775c64ccc0b84fb60836b30dc9d92ac4a";
          sha256 = "1idpisw39ba2dic9jl2s2yrkdgbyny9dfxf0qdr5i0wfvvlmbdih";
        };
      };
    };
    "aws/aws-crt-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-crt-php-3942776a8c99209908ee0b287746263725685732";
        src = fetchurl {
          url = "https://api.github.com/repos/awslabs/aws-crt-php/zipball/3942776a8c99209908ee0b287746263725685732";
          sha256 = "0g4vjln6s1419ydljn5m64kzid0b7cplbc0nwn3y4cj72408fyiz";
        };
      };
    };
    "aws/aws-sdk-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "aws-aws-sdk-php-4961e8b34fab8b92a459067f264b4dc66f969a57";
        src = fetchurl {
          url = "https://api.github.com/repos/aws/aws-sdk-php/zipball/4961e8b34fab8b92a459067f264b4dc66f969a57";
          sha256 = "0axw5445n8c5c3pcszc8cncpfrbpf70ahaj5dq1n3699dfkx42am";
        };
      };
    };
    "bacon/bacon-qr-code" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "bacon-bacon-qr-code-0069435e2a01a57193b25790f105a5d3168653c1";
        src = fetchurl {
          url = "https://api.github.com/repos/Bacon/BaconQrCode/zipball/0069435e2a01a57193b25790f105a5d3168653c1";
          sha256 = "07g2jh5pvsdz301vls0w139shdgjfhr7qgl4qjramzl4b8vxd4k2";
        };
      };
    };
    "barryvdh/laravel-debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-debugbar-b96f9820aaf1ff9afe945207883149e1c7afb298";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-debugbar/zipball/b96f9820aaf1ff9afe945207883149e1c7afb298";
          sha256 = "0ns718nw578b0ii9jra8b2x5nvivgc9jpzmkxa8m766br1g8hsw5";
        };
      };
    };
    "barryvdh/laravel-dompdf" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "barryvdh-laravel-dompdf-e3f429e97087b2ef19b83e5ed313f080f2477685";
        src = fetchurl {
          url = "https://api.github.com/repos/barryvdh/laravel-dompdf/zipball/e3f429e97087b2ef19b83e5ed313f080f2477685";
          sha256 = "1gwcv7pdbca3qk5pvb96pjilbpmgf76ppn733986mb6n55yab9g8";
        };
      };
    };
    "brick/math" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "brick-math-ca57d18f028f84f777b2168cd1911b0dee2343ae";
        src = fetchurl {
          url = "https://api.github.com/repos/brick/math/zipball/ca57d18f028f84f777b2168cd1911b0dee2343ae";
          sha256 = "1nr1grrb9g5g3ihx94yk0amp8zx8prkkvg2934ygfc3rrv03cq9w";
        };
      };
    };
    "dasprid/enum" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dasprid-enum-5abf82f213618696dda8e3bf6f64dd042d8542b2";
        src = fetchurl {
          url = "https://api.github.com/repos/DASPRiD/Enum/zipball/5abf82f213618696dda8e3bf6f64dd042d8542b2";
          sha256 = "0rs7i1xiwhssy88s7bwnp5ri5fi2xy3fl7pw6l5k27xf2f1hv7q6";
        };
      };
    };
    "defuse/php-encryption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "defuse-php-encryption-77880488b9954b7884c25555c2a0ea9e7053f9d2";
        src = fetchurl {
          url = "https://api.github.com/repos/defuse/php-encryption/zipball/77880488b9954b7884c25555c2a0ea9e7053f9d2";
          sha256 = "1lcvpg56nw72cxyh6sga7fx94qw9l0l1y78z7y7ny3hgdniwhihx";
        };
      };
    };
    "dflydev/dot-access-data" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dflydev-dot-access-data-0992cc19268b259a39e86f296da5f0677841f42c";
        src = fetchurl {
          url = "https://api.github.com/repos/dflydev/dflydev-dot-access-data/zipball/0992cc19268b259a39e86f296da5f0677841f42c";
          sha256 = "0qdf1gbfkj7vjqhn7m99s1gpjkj2crqrqh1wzpdzyz27izgjgsyw";
        };
      };
    };
    "doctrine/annotations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-annotations-5b668aef16090008790395c02c893b1ba13f7e08";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/annotations/zipball/5b668aef16090008790395c02c893b1ba13f7e08";
          sha256 = "129dixpipqfi55yq1rcp7dwj1yl1w70i462rs16ma4bn5vzxqz5s";
        };
      };
    };
    "doctrine/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-cache-4cf401d14df219fa6f38b671f5493449151c9ad8";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/cache/zipball/4cf401d14df219fa6f38b671f5493449151c9ad8";
          sha256 = "1hklk08cld4i5113f0a87778xmqnivkrck718wjbp1z6k76sbnsh";
        };
      };
    };
    "doctrine/collections" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-collections-1958a744696c6bb3bb0d28db2611dc11610e78af";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/collections/zipball/1958a744696c6bb3bb0d28db2611dc11610e78af";
          sha256 = "0ygsw2vgrkz1wd9aw6gd8y6kjwxq9bjqcp3dgdx0p8w9mz7bdpm5";
        };
      };
    };
    "doctrine/common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-common-f3812c026e557892c34ef37f6ab808a6b567da7f";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/common/zipball/f3812c026e557892c34ef37f6ab808a6b567da7f";
          sha256 = "16jf1wzs6ccpw2ny7rkzpf0asdwr1cfzcyw8g5x88i4j9jazn8xa";
        };
      };
    };
    "doctrine/dbal" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-dbal-35eae239ef515d55ebb24e9d4715cad09a4f58ed";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/dbal/zipball/35eae239ef515d55ebb24e9d4715cad09a4f58ed";
          sha256 = "14zpqqihsp29b3ha9wjahbwqxhqgz3hbmbqi4brp4bkmx4bkqkfb";
        };
      };
    };
    "doctrine/deprecations" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-deprecations-9504165960a1f83cc1480e2be1dd0a0478561314";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/deprecations/zipball/9504165960a1f83cc1480e2be1dd0a0478561314";
          sha256 = "04kpbzk5iw86imspkg7dgs54xx877k9b5q0dfg2h119mlfkvxil6";
        };
      };
    };
    "doctrine/event-manager" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-event-manager-41370af6a30faa9dc0368c4a6814d596e81aba7f";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/event-manager/zipball/41370af6a30faa9dc0368c4a6814d596e81aba7f";
          sha256 = "0pn2aiwl4fvv6fcwar9alng2yrqy8bzc58n4bkp6y2jnpw5gp4m8";
        };
      };
    };
    "doctrine/inflector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-inflector-4bd5c1cdfcd00e9e2d8c484f79150f67e5d355d9";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/inflector/zipball/4bd5c1cdfcd00e9e2d8c484f79150f67e5d355d9";
          sha256 = "0390gkbk3vdjd98h7wjpdv0579swbavrdb6yrlslfdr068g4bmbf";
        };
      };
    };
    "doctrine/instantiator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-instantiator-10dcfce151b967d20fde1b34ae6640712c3891bc";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/instantiator/zipball/10dcfce151b967d20fde1b34ae6640712c3891bc";
          sha256 = "1m6pw3bb8v04wqsysj8ma4db8vpm9jnd7ddh8ihdqyfpz8pawjp7";
        };
      };
    };
    "doctrine/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-lexer-c268e882d4dbdd85e36e4ad69e02dc284f89d229";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/lexer/zipball/c268e882d4dbdd85e36e4ad69e02dc284f89d229";
          sha256 = "12g069nljl3alyk15884nd1jc4mxk87isqsmfj7x6j2vxvk9qchs";
        };
      };
    };
    "doctrine/persistence" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-persistence-7a6eac9fb6f61bba91328f15aa7547f4806ca288";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/persistence/zipball/7a6eac9fb6f61bba91328f15aa7547f4806ca288";
          sha256 = "0mszkf7lxdhbr5b3ibpn7ipyrf6a6kfj283fvh83akyv1mplsl0h";
        };
      };
    };
    "doctrine/reflection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "doctrine-reflection-fa587178be682efe90d005e3a322590d6ebb59a5";
        src = fetchurl {
          url = "https://api.github.com/repos/doctrine/reflection/zipball/fa587178be682efe90d005e3a322590d6ebb59a5";
          sha256 = "1jn3bbzv0pn16aw0kkg0l765wi49zpf5vpirqwmw3viqj9bgj1b5";
        };
      };
    };
    "dompdf/dompdf" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dompdf-dompdf-5031045d9640b38cfc14aac9667470df09c9e090";
        src = fetchurl {
          url = "https://api.github.com/repos/dompdf/dompdf/zipball/5031045d9640b38cfc14aac9667470df09c9e090";
          sha256 = "1ciw3mc6pq3rwpzsgc71gdbwppqjdfcr0fhq3435c27ni5y8z4c5";
        };
      };
    };
    "dragonmantank/cron-expression" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "dragonmantank-cron-expression-be85b3f05b46c39bbc0d95f6c071ddff669510fa";
        src = fetchurl {
          url = "https://api.github.com/repos/dragonmantank/cron-expression/zipball/be85b3f05b46c39bbc0d95f6c071ddff669510fa";
          sha256 = "09k5cj8bay6jkphjl5ngfx7qb17dxnlvpf6918a9ms8am731s2a6";
        };
      };
    };
    "eduardokum/laravel-mail-auto-embed" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "eduardokum-laravel-mail-auto-embed-ea098444590521d574c84a37ed732c92b840d5b4";
        src = fetchurl {
          url = "https://api.github.com/repos/eduardokum/laravel-mail-auto-embed/zipball/ea098444590521d574c84a37ed732c92b840d5b4";
          sha256 = "1amqglrskwx9lfdl06k5j0inz3j41lbr0kmq6hjxx1gia0ddh91f";
        };
      };
    };
    "egulias/email-validator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "egulias-email-validator-0dbf5d78455d4d6a41d186da50adc1122ec066f4";
        src = fetchurl {
          url = "https://api.github.com/repos/egulias/EmailValidator/zipball/0dbf5d78455d4d6a41d186da50adc1122ec066f4";
          sha256 = "00kwb8rhk1fq3a1i152xniipk3y907q1v5r3szqbkq5rz82dwbck";
        };
      };
    };
    "enshrined/svg-sanitize" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "enshrined-svg-sanitize-e50b83a2f1f296ca61394fe88fbfe3e896a84cf4";
        src = fetchurl {
          url = "https://api.github.com/repos/darylldoyle/svg-sanitizer/zipball/e50b83a2f1f296ca61394fe88fbfe3e896a84cf4";
          sha256 = "1pv8lkpyl0fp0ychfqlds31lpy73pzz9z2rjngxhpvzfka39gchg";
        };
      };
    };
    "erusev/parsedown" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "erusev-parsedown-cb17b6477dfff935958ba01325f2e8a2bfa6dab3";
        src = fetchurl {
          url = "https://api.github.com/repos/erusev/parsedown/zipball/cb17b6477dfff935958ba01325f2e8a2bfa6dab3";
          sha256 = "1iil9v8g03m5vpxxg3a5qb2sxd1cs5c4p5i0k00cqjnjsxfrazxd";
        };
      };
    };
    "ezyang/htmlpurifier" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ezyang-htmlpurifier-12ab42bd6e742c70c0a52f7b82477fcd44e64b75";
        src = fetchurl {
          url = "https://api.github.com/repos/ezyang/htmlpurifier/zipball/12ab42bd6e742c70c0a52f7b82477fcd44e64b75";
          sha256 = "168kkjcq1w9vdnly5k72qc8jb8amdcmax9wja0xwfh926gb6dpz7";
        };
      };
    };
    "facade/flare-client-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-flare-client-php-b2adf1512755637d0cef4f7d1b54301325ac78ed";
        src = fetchurl {
          url = "https://api.github.com/repos/facade/flare-client-php/zipball/b2adf1512755637d0cef4f7d1b54301325ac78ed";
          sha256 = "10yqn1bi4q6mp89g16d02dc7crxdigjxyvax973fdnmxnvafl0cb";
        };
      };
    };
    "facade/ignition" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-ignition-1d71996f83c9a5a7807331b8986ac890352b7a0c";
        src = fetchurl {
          url = "https://api.github.com/repos/facade/ignition/zipball/1d71996f83c9a5a7807331b8986ac890352b7a0c";
          sha256 = "0zc9x2d597709rp5fzsbx5gqn48qcsw70h1a63cqrw1nl95392gs";
        };
      };
    };
    "facade/ignition-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "facade-ignition-contracts-3c921a1cdba35b68a7f0ccffc6dffc1995b18267";
        src = fetchurl {
          url = "https://api.github.com/repos/facade/ignition-contracts/zipball/3c921a1cdba35b68a7f0ccffc6dffc1995b18267";
          sha256 = "1nsjwd1k9q8qmfvh7m50rs42yxzxyq4f56r6dq205gwcmqsjb2j0";
        };
      };
    };
    "fideloper/proxy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fideloper-proxy-c073b2bd04d1c90e04dc1b787662b558dd65ade0";
        src = fetchurl {
          url = "https://api.github.com/repos/fideloper/TrustedProxy/zipball/c073b2bd04d1c90e04dc1b787662b558dd65ade0";
          sha256 = "05jzgjj4fy5p1smqj41b5qxj42zn0mnczvsaacni4fmq174mz4gy";
        };
      };
    };
    "filp/whoops" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "filp-whoops-a63e5e8f26ebbebf8ed3c5c691637325512eb0dc";
        src = fetchurl {
          url = "https://api.github.com/repos/filp/whoops/zipball/a63e5e8f26ebbebf8ed3c5c691637325512eb0dc";
          sha256 = "0hc9zfh3i7br30831grccm4wny9dllpswhaw8hdn988mvg5xrdy0";
        };
      };
    };
    "firebase/php-jwt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "firebase-php-jwt-83b609028194aa042ea33b5af2d41a7427de80e6";
        src = fetchurl {
          url = "https://api.github.com/repos/firebase/php-jwt/zipball/83b609028194aa042ea33b5af2d41a7427de80e6";
          sha256 = "16a0nw983x36al7zdcrf6h2m4jmnnvmr4p9znr5yzpchi5zx42ig";
        };
      };
    };
    "fruitcake/laravel-cors" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "fruitcake-laravel-cors-783a74f5e3431d7b9805be8afb60fd0a8f743534";
        src = fetchurl {
          url = "https://api.github.com/repos/fruitcake/laravel-cors/zipball/783a74f5e3431d7b9805be8afb60fd0a8f743534";
          sha256 = "13mqhjks048fb5042l0rfrr52rz7knp9gjn8qviw9cx76kllw2c9";
        };
      };
    };
    "graham-campbell/result-type" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "graham-campbell-result-type-0690bde05318336c7221785f2a932467f98b64ca";
        src = fetchurl {
          url = "https://api.github.com/repos/GrahamCampbell/Result-Type/zipball/0690bde05318336c7221785f2a932467f98b64ca";
          sha256 = "0a6kj3vxmhr1wh2kggmrl6y41hkg19jc0iq8qw095lf11mr4bd83";
        };
      };
    };
    "guzzlehttp/guzzle" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-guzzle-ac1ec1cd9b5624694c3a40be801d94137afb12b4";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/guzzle/zipball/ac1ec1cd9b5624694c3a40be801d94137afb12b4";
          sha256 = "0bpgi47jc2d1ca0h62ahg9bpkh355azncwgnzcb2vsaldcm4g27s";
        };
      };
    };
    "guzzlehttp/promises" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-promises-fe752aedc9fd8fcca3fe7ad05d419d32998a06da";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/promises/zipball/fe752aedc9fd8fcca3fe7ad05d419d32998a06da";
          sha256 = "09ivi77y49bpc2sy3xhvgq22rfh2fhv921mn8402dv0a8bdprf56";
        };
      };
    };
    "guzzlehttp/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "guzzlehttp-psr7-c94a94f120803a18554c1805ef2e539f8285f9a2";
        src = fetchurl {
          url = "https://api.github.com/repos/guzzle/psr7/zipball/c94a94f120803a18554c1805ef2e539f8285f9a2";
          sha256 = "05q47cx2dvqxxi5kan0d3q956lqrf3rnan5qbwc36hk4pb5n1sqs";
        };
      };
    };
    "intervention/image" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "intervention-image-744ebba495319501b873a4e48787759c72e3fb8c";
        src = fetchurl {
          url = "https://api.github.com/repos/Intervention/image/zipball/744ebba495319501b873a4e48787759c72e3fb8c";
          sha256 = "1h0w1gmnsb54k2y12vdhardssz9l3fqddln08fx9spwva1w4ms59";
        };
      };
    };
    "javiereguiluz/easyslugger" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "javiereguiluz-easyslugger-11524a3fd70e3f0c98043755a0ffa228f2529211";
        src = fetchurl {
          url = "https://api.github.com/repos/javiereguiluz/EasySlugger/zipball/11524a3fd70e3f0c98043755a0ffa228f2529211";
          sha256 = "12x5cgp3qmz5d9wvgpd6c0whygm9z3y392fdi4kqjlzi3n5yknnp";
        };
      };
    };
    "laravel/framework" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-framework-97a549f1a83cfb32dab1eecab4c4d40a984a72b5";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/framework/zipball/97a549f1a83cfb32dab1eecab4c4d40a984a72b5";
          sha256 = "0fy4zhnjl2wznpnmbby1fz2jnkclcy299l6r5xdvqmz6y3s4m30h";
        };
      };
    };
    "laravel/helpers" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-helpers-c28b0ccd799d58564c41a62395ac9511a1e72931";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/helpers/zipball/c28b0ccd799d58564c41a62395ac9511a1e72931";
          sha256 = "0s9ppwkwl5c1gp1bd12fvb2k1n77h0qj5vl4c88i325y5fcfgvnb";
        };
      };
    };
    "laravel/passport" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-passport-1039d8b4aa71c45dbea2f140b131cae8802237e7";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/passport/zipball/1039d8b4aa71c45dbea2f140b131cae8802237e7";
          sha256 = "0krr0dk441kglxa8jp65chbkfng5lcbav1ghv6v2ajkkjimwy6ws";
        };
      };
    };
    "laravel/serializable-closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-serializable-closure-9e4b005daa20b0c161f3845040046dc9ddc1d74e";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/serializable-closure/zipball/9e4b005daa20b0c161f3845040046dc9ddc1d74e";
          sha256 = "1arjkh7rxjnifcccqrdyby308fg3vlp5mfz5bhhk9cs9q1xhrhna";
        };
      };
    };
    "laravel/slack-notification-channel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-slack-notification-channel-060617a31562c88656c95c5971a36989122d4b53";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/slack-notification-channel/zipball/060617a31562c88656c95c5971a36989122d4b53";
          sha256 = "1b2hw28aqb805ac5w7knm9myrgyh40aqw9njyzmvsr2jrphjwgr4";
        };
      };
    };
    "laravel/tinker" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-tinker-5f2f9815b7631b9f586a3de7933c25f9327d4073";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/tinker/zipball/5f2f9815b7631b9f586a3de7933c25f9327d4073";
          sha256 = "1msw0c39f5fj59ymlf1266a1fcng6qgv9b45gcy6f99w7583bf3a";
        };
      };
    };
    "laravel/ui" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravel-ui-f11d295de1508c5bb56206a620b00b6616de414c";
        src = fetchurl {
          url = "https://api.github.com/repos/laravel/ui/zipball/f11d295de1508c5bb56206a620b00b6616de414c";
          sha256 = "1cjhzmvl5wwf2q46di5fnqf9kysfib4rfqf7h9pz8w7p74nl3r5c";
        };
      };
    };
    "laravelcollective/html" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "laravelcollective-html-78c3cb516ac9e6d3d76cad9191f81d217302dea6";
        src = fetchurl {
          url = "https://api.github.com/repos/LaravelCollective/html/zipball/78c3cb516ac9e6d3d76cad9191f81d217302dea6";
          sha256 = "14nm7wzlp8hz0ja1xhs10nhci3bq9ss73jpavbs0qazipfpc38sn";
        };
      };
    };
    "lcobucci/clock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "lcobucci-clock-353d83fe2e6ae95745b16b3d911813df6a05bfb3";
        src = fetchurl {
          url = "https://api.github.com/repos/lcobucci/clock/zipball/353d83fe2e6ae95745b16b3d911813df6a05bfb3";
          sha256 = "18jdhd0jl5sqy5qkg2kjlrwyilyd80mck9gcpwa9xm7il9s9lf8m";
        };
      };
    };
    "lcobucci/jwt" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "lcobucci-jwt-fe2d89f2eaa7087af4aa166c6f480ef04e000582";
        src = fetchurl {
          url = "https://api.github.com/repos/lcobucci/jwt/zipball/fe2d89f2eaa7087af4aa166c6f480ef04e000582";
          sha256 = "04rm6gfjlhxfllhmppx2fmxl8knflcxz6ss12y4lisg938xgm187";
        };
      };
    };
    "league/commonmark" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-commonmark-47b015bc4e50fd4438c1ffef6139a1fb65d2ab71";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/commonmark/zipball/47b015bc4e50fd4438c1ffef6139a1fb65d2ab71";
          sha256 = "0lgsifb74c6pyc93bg25p46anx12iws3ba13n0bgc6c9gpxia1i1";
        };
      };
    };
    "league/config" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-config-a9d39eeeb6cc49d10a6e6c36f22c4c1f4a767f3e";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/config/zipball/a9d39eeeb6cc49d10a6e6c36f22c4c1f4a767f3e";
          sha256 = "0mwqf6pdapgbxcry328kl9974awjmnv491c6ryirw74lqkapw2bn";
        };
      };
    };
    "league/csv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-csv-9d2e0265c5d90f5dd601bc65ff717e05cec19b47";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/csv/zipball/9d2e0265c5d90f5dd601bc65ff717e05cec19b47";
          sha256 = "0mcngirl2r8aw7hgbwaq3hrkkib4xwvhngijdhrkdzg4hj6ii3ap";
        };
      };
    };
    "league/event" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-event-d2cc124cf9a3fab2bb4ff963307f60361ce4d119";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/event/zipball/d2cc124cf9a3fab2bb4ff963307f60361ce4d119";
          sha256 = "1fc8aj0mpbrnh3b93gn8pypix28nf2gfvi403kfl7ibh5iz6ds5l";
        };
      };
    };
    "league/flysystem" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-094defdb4a7001845300334e7c1ee2335925ef99";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem/zipball/094defdb4a7001845300334e7c1ee2335925ef99";
          sha256 = "0dn71b1pwikbwz1cmmz9k1fc8k1fsmah3gy8sqxbz7czhqn5qiva";
        };
      };
    };
    "league/flysystem-aws-s3-v3" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-aws-s3-v3-4e25cc0582a36a786c31115e419c6e40498f6972";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem-aws-s3-v3/zipball/4e25cc0582a36a786c31115e419c6e40498f6972";
          sha256 = "1q2vkgyaz7h6z3q0z3v3l5rsvhv4xc45prgzr214cgm656i2h1ab";
        };
      };
    };
    "league/flysystem-cached-adapter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-flysystem-cached-adapter-d1925efb2207ac4be3ad0c40b8277175f99ffaff";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/flysystem-cached-adapter/zipball/d1925efb2207ac4be3ad0c40b8277175f99ffaff";
          sha256 = "1gvp89cl27ypcy4h0qjm04dc5k77jfm95m4paasglzfsi6g40i71";
        };
      };
    };
    "league/mime-type-detection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-mime-type-detection-aa70e813a6ad3d1558fc927863d47309b4c23e69";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/mime-type-detection/zipball/aa70e813a6ad3d1558fc927863d47309b4c23e69";
          sha256 = "0k2kccf1v0002bb083p1ncmm8fbyflnkjx45808sxlkrxggzqcy3";
        };
      };
    };
    "league/oauth2-server" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "league-oauth2-server-f5698a3893eda9a17bcd48636990281e7ca77b2a";
        src = fetchurl {
          url = "https://api.github.com/repos/thephpleague/oauth2-server/zipball/f5698a3893eda9a17bcd48636990281e7ca77b2a";
          sha256 = "1fi46pi8aiw8jdhdjwq38kxrva9hbk85h5gr5h1ixlxm699vnrsz";
        };
      };
    };
    "livewire/livewire" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "livewire-livewire-2d68c61a8edf338534fdd8e2b2750dca2e741439";
        src = fetchurl {
          url = "https://api.github.com/repos/livewire/livewire/zipball/2d68c61a8edf338534fdd8e2b2750dca2e741439";
          sha256 = "14zyin7ph9z6z5yy7ncmi6mlwq947p9zlkkaydx6p53sxyk7y7j4";
        };
      };
    };
    "maatwebsite/excel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maatwebsite-excel-49ccd4142d3d7bce492d6bfb9dd9a27b12935408";
        src = fetchurl {
          url = "https://api.github.com/repos/SpartnerNL/Laravel-Excel/zipball/49ccd4142d3d7bce492d6bfb9dd9a27b12935408";
          sha256 = "1mm83fkhz3r3l0xvskdxkfr759j8wkaa720jm0bd77bdzazrpy6g";
        };
      };
    };
    "maennchen/zipstream-php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maennchen-zipstream-php-c4c5803cc1f93df3d2448478ef79394a5981cc58";
        src = fetchurl {
          url = "https://api.github.com/repos/maennchen/ZipStream-PHP/zipball/c4c5803cc1f93df3d2448478ef79394a5981cc58";
          sha256 = "0ggx4sb5w7aah7h645ad59gsn6r9an5y4f8xhgwbbjxndmgx34dq";
        };
      };
    };
    "markbaker/complex" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "markbaker-complex-ab8bc271e404909db09ff2d5ffa1e538085c0f22";
        src = fetchurl {
          url = "https://api.github.com/repos/MarkBaker/PHPComplex/zipball/ab8bc271e404909db09ff2d5ffa1e538085c0f22";
          sha256 = "1zgy7bz25a6wa4f0m9q3ax38a3dfzv8cz2mfcppf3znb2mxs8w5y";
        };
      };
    };
    "markbaker/matrix" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "markbaker-matrix-c66aefcafb4f6c269510e9ac46b82619a904c576";
        src = fetchurl {
          url = "https://api.github.com/repos/MarkBaker/PHPMatrix/zipball/c66aefcafb4f6c269510e9ac46b82619a904c576";
          sha256 = "0vfa7phvjkgsfplpxd3s2h00c28hy389yig29bmcpxlfk008vicn";
        };
      };
    };
    "masterminds/html5" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "masterminds-html5-f640ac1bdddff06ea333a920c95bbad8872429ab";
        src = fetchurl {
          url = "https://api.github.com/repos/Masterminds/html5-php/zipball/f640ac1bdddff06ea333a920c95bbad8872429ab";
          sha256 = "1v9sn44z710wha5jrzy0alx1ayj3d0fcin1xpx6c6fdhlksbqc6z";
        };
      };
    };
    "maximebf/debugbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "maximebf-debugbar-0d44b75f3b5d6d41ae83b79c7a4bceae7fbc78b6";
        src = fetchurl {
          url = "https://api.github.com/repos/maximebf/php-debugbar/zipball/0d44b75f3b5d6d41ae83b79c7a4bceae7fbc78b6";
          sha256 = "02g3kz29pgf31q2q7zmm2w999n4bncm6336bh0ixv8v9vl1mssd4";
        };
      };
    };
    "mediconesystems/livewire-datatables" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mediconesystems-livewire-datatables-bf6f24d529208e6bdec58276e92792719c73c827";
        src = fetchurl {
          url = "https://api.github.com/repos/MedicOneSystems/livewire-datatables/zipball/bf6f24d529208e6bdec58276e92792719c73c827";
          sha256 = "0pdr1ax3735f2147w6bz843rrfjnrr57z6355xkdax9a16zvc0lm";
        };
      };
    };
    "monolog/monolog" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "monolog-monolog-fd4380d6fc37626e2f799f29d91195040137eba9";
        src = fetchurl {
          url = "https://api.github.com/repos/Seldaek/monolog/zipball/fd4380d6fc37626e2f799f29d91195040137eba9";
          sha256 = "1k56si01sjl93mxq1pk599yqqqhldqz34qi73y5jaga0m9iq07wk";
        };
      };
    };
    "mtdowling/jmespath.php" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "mtdowling-jmespath.php-9b87907a81b87bc76d19a7fb2d61e61486ee9edb";
        src = fetchurl {
          url = "https://api.github.com/repos/jmespath/jmespath.php/zipball/9b87907a81b87bc76d19a7fb2d61e61486ee9edb";
          sha256 = "1ig3gi6f8gisagcn876598ps48s86s6m0c82diyksylarg3yn0yd";
        };
      };
    };
    "myclabs/php-enum" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "myclabs-php-enum-b942d263c641ddb5190929ff840c68f78713e937";
        src = fetchurl {
          url = "https://api.github.com/repos/myclabs/php-enum/zipball/b942d263c641ddb5190929ff840c68f78713e937";
          sha256 = "16123l5459sjbmnz5nx68x8kpq5mc7miz95q4sjvancpb1dgl8d3";
        };
      };
    };
    "neitanod/forceutf8" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "neitanod-forceutf8-c1fbe70bfb5ad41b8ec5785056b0e308b40d4831";
        src = fetchurl {
          url = "https://api.github.com/repos/neitanod/forceutf8/zipball/c1fbe70bfb5ad41b8ec5785056b0e308b40d4831";
          sha256 = "1fvh2iapy7q22n65p6xkcbxcmp68x917gkv2cb0gs59671fwxsjf";
        };
      };
    };
    "nesbot/carbon" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nesbot-carbon-4a54375c21eea4811dbd1149fe6b246517554e78";
        src = fetchurl {
          url = "https://api.github.com/repos/briannesbitt/Carbon/zipball/4a54375c21eea4811dbd1149fe6b246517554e78";
          sha256 = "00l918jykwyi8pjn7x08m29x3wrwh92sq495acyp9dkiby7k59y1";
        };
      };
    };
    "nette/schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-schema-9a39cef03a5b34c7de64f551538cbba05c2be5df";
        src = fetchurl {
          url = "https://api.github.com/repos/nette/schema/zipball/9a39cef03a5b34c7de64f551538cbba05c2be5df";
          sha256 = "1kr5lai6r1l6w85ck64b1cq9cp0r2kwa10i1xcmlc7q0xlrxwhp2";
        };
      };
    };
    "nette/utils" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nette-utils-0af4e3de4df9f1543534beab255ccf459e7a2c99";
        src = fetchurl {
          url = "https://api.github.com/repos/nette/utils/zipball/0af4e3de4df9f1543534beab255ccf459e7a2c99";
          sha256 = "0pmcgx3h3bl02sdqvhb9ap548ldxnhl3051imqss2yd64fkxf5fj";
        };
      };
    };
    "nikic/php-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nikic-php-parser-210577fe3cf7badcc5814d99455df46564f3c077";
        src = fetchurl {
          url = "https://api.github.com/repos/nikic/PHP-Parser/zipball/210577fe3cf7badcc5814d99455df46564f3c077";
          sha256 = "191ijb7bybqnl1jayx6bipqh91dc9acg9zsbh89fk4h1ff87b1qp";
        };
      };
    };
    "nunomaduro/collision" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nunomaduro-collision-8b610eef8582ccdc05d8f2ab23305e2d37049461";
        src = fetchurl {
          url = "https://api.github.com/repos/nunomaduro/collision/zipball/8b610eef8582ccdc05d8f2ab23305e2d37049461";
          sha256 = "0w559vqpknkl6fbhz5hnkc9g37ydcyrqx82w3kjl88vmjycd1f61";
        };
      };
    };
    "nyholm/psr7" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "nyholm-psr7-1461e07a0f2a975a52082ca3b769ca912b816226";
        src = fetchurl {
          url = "https://api.github.com/repos/Nyholm/psr7/zipball/1461e07a0f2a975a52082ca3b769ca912b816226";
          sha256 = "1i6v8r9c2gxsjafyy03g339hkc0wcbsdlg47gy6rswg7qc1r91g1";
        };
      };
    };
    "onelogin/php-saml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "onelogin-php-saml-a7328b11887660ad248ea10952dd67a5aa73ba3b";
        src = fetchurl {
          url = "https://api.github.com/repos/onelogin/php-saml/zipball/a7328b11887660ad248ea10952dd67a5aa73ba3b";
          sha256 = "0ycj3n22k5i3h8p7gn0xff6a7smjypazl2k5qvyzg86fjr7s3vfv";
        };
      };
    };
    "opis/closure" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "opis-closure-3d81e4309d2a927abbe66df935f4bb60082805ad";
        src = fetchurl {
          url = "https://api.github.com/repos/opis/closure/zipball/3d81e4309d2a927abbe66df935f4bb60082805ad";
          sha256 = "0hqs6rdkkcggswrgjlispkby2yg4hwn63bl2ma62lnmpfbpwn0sd";
        };
      };
    };
    "paragonie/constant_time_encoding" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-constant_time_encoding-9229e15f2e6ba772f0c55dd6986c563b937170a8";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/constant_time_encoding/zipball/9229e15f2e6ba772f0c55dd6986c563b937170a8";
          sha256 = "1cn71hyvjd100w0dyqibjxwkc8wn5525jmpv5fyh1ag04lr5ld90";
        };
      };
    };
    "paragonie/random_compat" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "paragonie-random_compat-996434e5492cb4c3edcb9168db6fbb1359ef965a";
        src = fetchurl {
          url = "https://api.github.com/repos/paragonie/random_compat/zipball/996434e5492cb4c3edcb9168db6fbb1359ef965a";
          sha256 = "0ky7lal59dihf969r1k3pb96ql8zzdc5062jdbg69j6rj0scgkyx";
        };
      };
    };
    "patchwork/utf8" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "patchwork-utf8-e1fa4d4a57896d074c9a8d01742b688d5db4e9d5";
        src = fetchurl {
          url = "https://api.github.com/repos/tchwork/utf8/zipball/e1fa4d4a57896d074c9a8d01742b688d5db4e9d5";
          sha256 = "0rarkg8v23y58bc4n6j39wdi6is0p1rgqxnixqlgavcm35xjgnw0";
        };
      };
    };
    "phenx/php-font-lib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phenx-php-font-lib-dd448ad1ce34c63d09baccd05415e361300c35b4";
        src = fetchurl {
          url = "https://api.github.com/repos/dompdf/php-font-lib/zipball/dd448ad1ce34c63d09baccd05415e361300c35b4";
          sha256 = "0l20inbvipjdg9fdd32v8b7agjyvcs0rpqswcylld64vbm2sf3il";
        };
      };
    };
    "phenx/php-svg-lib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phenx-php-svg-lib-3ffbbb037f0871c3a819e90cff8b36dd7e656189";
        src = fetchurl {
          url = "https://api.github.com/repos/dompdf/php-svg-lib/zipball/3ffbbb037f0871c3a819e90cff8b36dd7e656189";
          sha256 = "0d4c7ii9dc2gxf5syfmqrs67hiskvigi62kaif9pi4alxkr9llcp";
        };
      };
    };
    "php-http/message-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "php-http-message-factory-a478cb11f66a6ac48d8954216cfed9aa06a501a1";
        src = fetchurl {
          url = "https://api.github.com/repos/php-http/message-factory/zipball/a478cb11f66a6ac48d8954216cfed9aa06a501a1";
          sha256 = "13drpc83bq332hz0b97whibkm7jpk56msq4yppw9nmrchzwgy7cs";
        };
      };
    };
    "phpdocumentor/reflection-common" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-common-1d01c49d4ed62f25aa84a747ad35d5a16924662b";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionCommon/zipball/1d01c49d4ed62f25aa84a747ad35d5a16924662b";
          sha256 = "1wx720a17i24471jf8z499dnkijzb4b8xra11kvw9g9hhzfadz1r";
        };
      };
    };
    "phpdocumentor/reflection-docblock" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-reflection-docblock-622548b623e81ca6d78b721c5e029f4ce664f170";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/ReflectionDocBlock/zipball/622548b623e81ca6d78b721c5e029f4ce664f170";
          sha256 = "1vs0fhpqk8s9bc0sqyfhpbs63q14lfjg1f0c1dw4jz97145j6r1n";
        };
      };
    };
    "phpdocumentor/type-resolver" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpdocumentor-type-resolver-93ebd0014cab80c4ea9f5e297ea48672f1b87706";
        src = fetchurl {
          url = "https://api.github.com/repos/phpDocumentor/TypeResolver/zipball/93ebd0014cab80c4ea9f5e297ea48672f1b87706";
          sha256 = "0b76kr2bp9pmkilr334zv7y5ml8z2vfhhfqcpr9y2kn97hirfn35";
        };
      };
    };
    "phpoffice/phpspreadsheet" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoffice-phpspreadsheet-3a9e29b4f386a08a151a33578e80ef1747037a48";
        src = fetchurl {
          url = "https://api.github.com/repos/PHPOffice/PhpSpreadsheet/zipball/3a9e29b4f386a08a151a33578e80ef1747037a48";
          sha256 = "1iy4d9g2ads1ichyrb80ha2hbyhnyjkxh6xg9bckfsxd12z2c0py";
        };
      };
    };
    "phpoption/phpoption" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpoption-phpoption-eab7a0df01fe2344d172bff4cd6dbd3f8b84ad15";
        src = fetchurl {
          url = "https://api.github.com/repos/schmittjoh/php-option/zipball/eab7a0df01fe2344d172bff4cd6dbd3f8b84ad15";
          sha256 = "1lk50y8jj2mzbwc2mxfm2xdasxf4axya72nv8wfc1vyz9y5ys3li";
        };
      };
    };
    "phpseclib/phpseclib" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpseclib-phpseclib-1443ab79364eea48665fa8c09ac67f37d1025f7e";
        src = fetchurl {
          url = "https://api.github.com/repos/phpseclib/phpseclib/zipball/1443ab79364eea48665fa8c09ac67f37d1025f7e";
          sha256 = "183n08sm1x9g6bygq35xmahfm1gpxr5w722ghiln5b1dh76ahmw5";
        };
      };
    };
    "phpspec/prophecy" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "phpspec-prophecy-bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
        src = fetchurl {
          url = "https://api.github.com/repos/phpspec/prophecy/zipball/bbcd7380b0ebf3961ee21409db7b38bc31d69a13";
          sha256 = "1xw7x12lws8qdrryhbgjiih48gxwlq99ayhhsy0q2ls9i9p6mw0w";
        };
      };
    };
    "pragmarx/google2fa" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-26c4c5cf30a2844ba121760fd7301f8ad240100b";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa/zipball/26c4c5cf30a2844ba121760fd7301f8ad240100b";
          sha256 = "1jmc7s3hbczvb0h4kfmya67l969nfww3lmc4slvzsz0zd769434h";
        };
      };
    };
    "pragmarx/google2fa-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-laravel-f9014fd7ea36a1f7fffa233109cf59b209469647";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa-laravel/zipball/f9014fd7ea36a1f7fffa233109cf59b209469647";
          sha256 = "1y1b24fyfsf8mrhla3j699x1x6pd23rw5k3pjsag0vqgvd4v3a8n";
        };
      };
    };
    "pragmarx/google2fa-qrcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "pragmarx-google2fa-qrcode-fd5ff0531a48b193a659309cc5fb882c14dbd03f";
        src = fetchurl {
          url = "https://api.github.com/repos/antonioribeiro/google2fa-qrcode/zipball/fd5ff0531a48b193a659309cc5fb882c14dbd03f";
          sha256 = "1csa15v68bznrz3262xjcdgcgw0lg8fwb6fhrbms2mnylhq4s35g";
        };
      };
    };
    "psr/cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-cache-d11b50ad223250cf17b86e38383413f5a6764bf8";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/cache/zipball/d11b50ad223250cf17b86e38383413f5a6764bf8";
          sha256 = "06i2k3dx3b4lgn9a4v1dlgv8l9wcl4kl7vzhh63lbji0q96hv8qz";
        };
      };
    };
    "psr/container" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-container-513e0666f7216c7459170d56df27dfcefe1689ea";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/container/zipball/513e0666f7216c7459170d56df27dfcefe1689ea";
          sha256 = "00yvj3b5ls2l1d0sk38g065raw837rw65dx1sicggjnkr85vmfzz";
        };
      };
    };
    "psr/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-event-dispatcher-dbefd12671e8a14ec7f180cab83036ed26714bb0";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/event-dispatcher/zipball/dbefd12671e8a14ec7f180cab83036ed26714bb0";
          sha256 = "05nicsd9lwl467bsv4sn44fjnnvqvzj1xqw2mmz9bac9zm66fsjd";
        };
      };
    };
    "psr/http-client" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-client-2dfb5f6c5eff0e91e20e913f8c5452ed95b86621";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-client/zipball/2dfb5f6c5eff0e91e20e913f8c5452ed95b86621";
          sha256 = "0cmkifa3ji1r8kn3y1rwg81rh8g2crvnhbv2am6d688dzsbw967v";
        };
      };
    };
    "psr/http-factory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-factory-12ac7fcd07e5b077433f5f2bee95b3a771bf61be";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-factory/zipball/12ac7fcd07e5b077433f5f2bee95b3a771bf61be";
          sha256 = "0inbnqpc5bfhbbda9dwazsrw9xscfnc8rdx82q1qm3r446mc1vds";
        };
      };
    };
    "psr/http-message" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-http-message-f6561bf28d520154e4b0ec72be95418abe6d9363";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/http-message/zipball/f6561bf28d520154e4b0ec72be95418abe6d9363";
          sha256 = "195dd67hva9bmr52iadr4kyp2gw2f5l51lplfiay2pv6l9y4cf45";
        };
      };
    };
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "psr/simple-cache" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-simple-cache-408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/simple-cache/zipball/408d5eafb83c57f6365a3ca330ff23aa4a5fa39b";
          sha256 = "1djgzclkamjxi9jy4m9ggfzgq1vqxaga2ip7l3cj88p7rwkzjxgw";
        };
      };
    };
    "psy/psysh" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psy-psysh-7f7da640d68b9c9fec819caae7c744a213df6514";
        src = fetchurl {
          url = "https://api.github.com/repos/bobthecow/psysh/zipball/7f7da640d68b9c9fec819caae7c744a213df6514";
          sha256 = "18pswm73lnsx3hjpnc6ld694jkf1n9g00a114a27k5ns0wwkag52";
        };
      };
    };
    "ralouphie/getallheaders" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ralouphie-getallheaders-120b605dfeb996808c31b6477290a714d356e822";
        src = fetchurl {
          url = "https://api.github.com/repos/ralouphie/getallheaders/zipball/120b605dfeb996808c31b6477290a714d356e822";
          sha256 = "1bv7ndkkankrqlr2b4kw7qp3fl0dxi6bp26bnim6dnlhavd6a0gg";
        };
      };
    };
    "ramsey/collection" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-collection-cccc74ee5e328031b15640b51056ee8d3bb66c0a";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/collection/zipball/cccc74ee5e328031b15640b51056ee8d3bb66c0a";
          sha256 = "1i2ga25aj80cci3di58qm17l588lzgank8wqhdbq0dcb3cg6cgr6";
        };
      };
    };
    "ramsey/uuid" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "ramsey-uuid-fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df";
        src = fetchurl {
          url = "https://api.github.com/repos/ramsey/uuid/zipball/fc9bb7fb5388691fd7373cd44dcb4d63bbcf24df";
          sha256 = "1fhjsyidsj95x5dd42z3hi5qhzii0hhhxa7xvc5jj7spqjdbqln4";
        };
      };
    };
    "robrichards/xmlseclibs" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "robrichards-xmlseclibs-f8f19e58f26cdb42c54b214ff8a820760292f8df";
        src = fetchurl {
          url = "https://api.github.com/repos/robrichards/xmlseclibs/zipball/f8f19e58f26cdb42c54b214ff8a820760292f8df";
          sha256 = "01zlpm36rrdj310cfmiz2fnabszxd3fq80fa8x8j3f9ki7dvhh5y";
        };
      };
    };
    "rollbar/rollbar" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "rollbar-rollbar-ff3db5739dd635740caed02ddad43e671b5a37e5";
        src = fetchurl {
          url = "https://api.github.com/repos/rollbar/rollbar-php/zipball/ff3db5739dd635740caed02ddad43e671b5a37e5";
          sha256 = "1mkbw0mcaj50ks0x6ql2qq7dr2i5nfr46x6chdf8hvnm1vjnphmd";
        };
      };
    };
    "rollbar/rollbar-laravel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "rollbar-rollbar-laravel-568134b68e9b2631fa52d0aa4668ee8b3cafbad5";
        src = fetchurl {
          url = "https://api.github.com/repos/rollbar/rollbar-php-laravel/zipball/568134b68e9b2631fa52d0aa4668ee8b3cafbad5";
          sha256 = "1yd4n4hc6nqifn4daz7j3bg954i35ylzblhvlm88jzs87q58km9s";
        };
      };
    };
    "sabberworm/php-css-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabberworm-php-css-parser-e41d2140031d533348b2192a83f02d8dd8a71d30";
        src = fetchurl {
          url = "https://api.github.com/repos/sabberworm/PHP-CSS-Parser/zipball/e41d2140031d533348b2192a83f02d8dd8a71d30";
          sha256 = "0slqh0ra9cwk1pm4q7bqhndynir0yxypzrxb2vrfzfkmnh0rm02c";
        };
      };
    };
    "sebastian/comparator" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-comparator-55f4261989e546dc112258c7a75935a81a7ce382";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/comparator/zipball/55f4261989e546dc112258c7a75935a81a7ce382";
          sha256 = "1d4bgf4m2x0kn3nw9hbb45asbx22lsp9vxl74rp1yl3sj2vk9sch";
        };
      };
    };
    "sebastian/diff" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-diff-3461e3fccc7cfdfc2720be910d3bd73c69be590d";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/diff/zipball/3461e3fccc7cfdfc2720be910d3bd73c69be590d";
          sha256 = "0967nl6cdnr0v0z83w4xy59agn60kfv8gb41aw3fpy1n2wpp62dj";
        };
      };
    };
    "sebastian/exporter" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-exporter-65e8b7db476c5dd267e65eea9cab77584d3cfff9";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/exporter/zipball/65e8b7db476c5dd267e65eea9cab77584d3cfff9";
          sha256 = "071813jw7nlsa3fs1hlrkl5fsjz4sidyq0i26p22m43isvvyad0q";
        };
      };
    };
    "sebastian/recursion-context" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sebastian-recursion-context-cd9d8cf3c5804de4341c283ed787f099f5506172";
        src = fetchurl {
          url = "https://api.github.com/repos/sebastianbergmann/recursion-context/zipball/cd9d8cf3c5804de4341c283ed787f099f5506172";
          sha256 = "1k0ki1krwq6329vsbw3515wsyg8a7n2l83lk19pdc12i2lg9nhpy";
        };
      };
    };
    "spatie/db-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-db-dumper-05e5955fb882008a8947c5a45146d86cfafa10d1";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/db-dumper/zipball/05e5955fb882008a8947c5a45146d86cfafa10d1";
          sha256 = "0g0scxq259qn1maxa61qh3cl5a88778qgx27dgbxr9p8kszivlsg";
        };
      };
    };
    "spatie/laravel-backup" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-laravel-backup-332fae80b12cacb9e4161824ba195d984b28c8fb";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/laravel-backup/zipball/332fae80b12cacb9e4161824ba195d984b28c8fb";
          sha256 = "02gcsv825zhw727bphrykp7lg7nhna7a2pzc20pnchkl9qbb6pnj";
        };
      };
    };
    "spatie/temporary-directory" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "spatie-temporary-directory-f517729b3793bca58f847c5fd383ec16f03ffec6";
        src = fetchurl {
          url = "https://api.github.com/repos/spatie/temporary-directory/zipball/f517729b3793bca58f847c5fd383ec16f03ffec6";
          sha256 = "1pn6l9c86yigpzn83ajpq2wiy8ds0rlxmiq0iwby14cijc98ma3m";
        };
      };
    };
    "squizlabs/php_codesniffer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "squizlabs-php_codesniffer-5e4e71592f69da17871dba6e80dd51bce74a351a";
        src = fetchurl {
          url = "https://api.github.com/repos/squizlabs/PHP_CodeSniffer/zipball/5e4e71592f69da17871dba6e80dd51bce74a351a";
          sha256 = "09jajz88dxmpllf0xzlc0gdyqclhsva66ilx6jlsad275m0s9jdp";
        };
      };
    };
    "swiftmailer/swiftmailer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "swiftmailer-swiftmailer-8a5d5072dca8f48460fce2f4131fcc495eec654c";
        src = fetchurl {
          url = "https://api.github.com/repos/swiftmailer/swiftmailer/zipball/8a5d5072dca8f48460fce2f4131fcc495eec654c";
          sha256 = "1p9m4fw9y9md9a7msbmnc0hpdrky8dwrllnyg1qf1cdyp9d70x1d";
        };
      };
    };
    "symfony/console" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-console-d8111acc99876953f52fe16d4c50eb60940d49ad";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/console/zipball/d8111acc99876953f52fe16d4c50eb60940d49ad";
          sha256 = "0im10aqw3ld1h99jnrya2dwsm41awr7cy9v257ira8aggqm4gngb";
        };
      };
    };
    "symfony/css-selector" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-css-selector-0628e6c6d7c92f1a7bae543959bdc17347be2436";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/css-selector/zipball/0628e6c6d7c92f1a7bae543959bdc17347be2436";
          sha256 = "1piyal7jg8sslxn4h4znrl1fsppbv2ik2s99i5na8wyq6wpz9zp4";
        };
      };
    };
    "symfony/debug" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-debug-5de6c6e7f52b364840e53851c126be4d71e60470";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/debug/zipball/5de6c6e7f52b364840e53851c126be4d71e60470";
          sha256 = "1kmf8kk5ra6nr17z007vacw3dvpcglng584l0y98wrn5kmmfgh4x";
        };
      };
    };
    "symfony/deprecation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-deprecation-contracts-6f981ee24cf69ee7ce9736146d1c57c2780598a8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/deprecation-contracts/zipball/6f981ee24cf69ee7ce9736146d1c57c2780598a8";
          sha256 = "05jws1g4kcs297bwf5d72z47m2263i2jqpivi3yv8kf50kdjjzba";
        };
      };
    };
    "symfony/error-handler" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-error-handler-c4ffc2cd919950d13c8c9ce32a70c70214c3ffc5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/error-handler/zipball/c4ffc2cd919950d13c8c9ce32a70c70214c3ffc5";
          sha256 = "0gmjz2gk6kbqlka9qrsc4zg02pdcxih01x1zlj9h8z6pzl2ii70r";
        };
      };
    };
    "symfony/event-dispatcher" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-dec8a9f58d20df252b9cd89f1c6c1530f747685d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher/zipball/dec8a9f58d20df252b9cd89f1c6c1530f747685d";
          sha256 = "0mf1h2v8xgfn8k55y9yhwr9pb9jia4va5a91xfchyvfyzd5x4sm4";
        };
      };
    };
    "symfony/event-dispatcher-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-event-dispatcher-contracts-66bea3b09be61613cd3b4043a65a8ec48cfa6d2a";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/event-dispatcher-contracts/zipball/66bea3b09be61613cd3b4043a65a8ec48cfa6d2a";
          sha256 = "03bx5j7xh5bv1v17nlaw9wnbad66bzwp5w7npg8w2b01my49phfy";
        };
      };
    };
    "symfony/finder" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-finder-231313534dded84c7ecaa79d14bc5da4ccb69b7d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/finder/zipball/231313534dded84c7ecaa79d14bc5da4ccb69b7d";
          sha256 = "1i2gr1ghnsk9gzcivixflg51vp83a99h4a0sh692acj0iq77iga6";
        };
      };
    };
    "symfony/http-foundation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-foundation-34e89bc147633c0f9dd6caaaf56da3b806a21465";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-foundation/zipball/34e89bc147633c0f9dd6caaaf56da3b806a21465";
          sha256 = "0qpgahjdizq7a1w5hl97dpybp9cmgbgm3s4qz2xjmcinxhs87bmx";
        };
      };
    };
    "symfony/http-kernel" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-http-kernel-d41f29ae9af1b5f40c7ebcddf09082953229411d";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/http-kernel/zipball/d41f29ae9af1b5f40c7ebcddf09082953229411d";
          sha256 = "19x0d5anqp83z16a3wjggkr2ds9k9ac1db1p8qvi3h9wglcvd9x4";
        };
      };
    };
    "symfony/mime" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-mime-e1503cfb5c9a225350f549d3bb99296f4abfb80f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/mime/zipball/e1503cfb5c9a225350f549d3bb99296f4abfb80f";
          sha256 = "1psnx3p6wj29c7gf67wwxhx6i63qksy9ljwhqblccy19cgnd6rcy";
        };
      };
    };
    "symfony/polyfill-ctype" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-ctype-30885182c981ab175d4d034db0f6f469898070ab";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-ctype/zipball/30885182c981ab175d4d034db0f6f469898070ab";
          sha256 = "0dfh24f8g048vbj88vx0lvw48nq5dsamy5kva72ab1h7vw9hvpwb";
        };
      };
    };
    "symfony/polyfill-iconv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-iconv-f1aed619e28cb077fc83fac8c4c0383578356e40";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-iconv/zipball/f1aed619e28cb077fc83fac8c4c0383578356e40";
          sha256 = "0fjx1a0kvkj0677nc6h49phqlk0hsgkzbs401lmhj6b6cdc7hvzp";
        };
      };
    };
    "symfony/polyfill-intl-grapheme" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-grapheme-81b86b50cf841a64252b439e738e97f4a34e2783";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-grapheme/zipball/81b86b50cf841a64252b439e738e97f4a34e2783";
          sha256 = "1dxymfi577yridk6dn8v2z1hyrpaxr8sp4g6dxxy913ilf6igx7r";
        };
      };
    };
    "symfony/polyfill-intl-idn" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-idn-749045c69efb97c70d25d7463abba812e91f3a44";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-idn/zipball/749045c69efb97c70d25d7463abba812e91f3a44";
          sha256 = "0ni1zlnp5xpxyzbax7v3mn20x35i69nsmch2sx322cs6dwb0ggbn";
        };
      };
    };
    "symfony/polyfill-intl-normalizer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-intl-normalizer-8590a5f561694770bdcd3f9b5c69dde6945028e8";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-intl-normalizer/zipball/8590a5f561694770bdcd3f9b5c69dde6945028e8";
          sha256 = "1c60xin00q0d2gbyaiglxppn5hqwki616v5chzwyhlhf6aplwsh3";
        };
      };
    };
    "symfony/polyfill-mbstring" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-mbstring-0abb51d2f102e00a4eefcf46ba7fec406d245825";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-mbstring/zipball/0abb51d2f102e00a4eefcf46ba7fec406d245825";
          sha256 = "1z17f7465fn778ak68mzz5kg2ql1n6ghgqh3827n9mcipwbp4k58";
        };
      };
    };
    "symfony/polyfill-php72" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php72-9a142215a36a3888e30d0a9eeea9766764e96976";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php72/zipball/9a142215a36a3888e30d0a9eeea9766764e96976";
          sha256 = "06ipbcvrxjzgvraf2z9fwgy0bzvzjvs5z1j67grg1gb15x3d428b";
        };
      };
    };
    "symfony/polyfill-php73" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php73-cc5db0e22b3cb4111010e48785a97f670b350ca5";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php73/zipball/cc5db0e22b3cb4111010e48785a97f670b350ca5";
          sha256 = "04z6fah8rn5b01w78j0vqa0jys4mvji66z4ql6wk1r1bf6j0048y";
        };
      };
    };
    "symfony/polyfill-php80" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php80-4407588e0d3f1f52efb65fbe92babe41f37fe50c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php80/zipball/4407588e0d3f1f52efb65fbe92babe41f37fe50c";
          sha256 = "187whknxl9rs0ddkjph6zmla5kh3k7w6hnvgfc44zig17jxsjdff";
        };
      };
    };
    "symfony/polyfill-php81" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-polyfill-php81-5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/polyfill-php81/zipball/5de4ba2d41b15f9bd0e19b2ab9674135813ec98f";
          sha256 = "0igxnmib8vkjp9x81j66hl4pf8i0nj86k4hdh8gzcymq01si0mxm";
        };
      };
    };
    "symfony/process" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-process-95440409896f90a5f85db07a32b517ecec17fa4c";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/process/zipball/95440409896f90a5f85db07a32b517ecec17fa4c";
          sha256 = "0f88n55a29l5sb1h7sar0257bsvc2fs10w4sm00aa6vq2cxnkazk";
        };
      };
    };
    "symfony/psr-http-message-bridge" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-psr-http-message-bridge-22b37c8a3f6b5d94e9cdbd88e1270d96e2f97b34";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/psr-http-message-bridge/zipball/22b37c8a3f6b5d94e9cdbd88e1270d96e2f97b34";
          sha256 = "18zvhrcry8173wklv3zpf8k06xx15smrw1dnj0zmq97injnam6fl";
        };
      };
    };
    "symfony/routing" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-routing-44b29c7a94e867ccde1da604792f11a469958981";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/routing/zipball/44b29c7a94e867ccde1da604792f11a469958981";
          sha256 = "07gscjp3zm2jlahsgaf5yamg2wh8asbfwq0rf2mr85scidwr58wp";
        };
      };
    };
    "symfony/service-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-service-contracts-1ab11b933cd6bc5464b08e81e2c5b07dec58b0fc";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/service-contracts/zipball/1ab11b933cd6bc5464b08e81e2c5b07dec58b0fc";
          sha256 = "0c1vq6jv2jc37i9m1ndpbv7g75blgvf1s44vk65nb1jdk3hrbrd1";
        };
      };
    };
    "symfony/string" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-string-92043b7d8383e48104e411bc9434b260dbeb5a10";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/string/zipball/92043b7d8383e48104e411bc9434b260dbeb5a10";
          sha256 = "0c3a1bxf3b4c5510wk9a1r2ilck0wnhhfds2kyijprib1n3iy41z";
        };
      };
    };
    "symfony/translation" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-a7ca9fdfffb0174209440c2ffa1dee228e15d95b";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation/zipball/a7ca9fdfffb0174209440c2ffa1dee228e15d95b";
          sha256 = "19p5vxk7ckvwf2ifizaf12hkvgvdjnw49083s8idfk01982q8wf3";
        };
      };
    };
    "symfony/translation-contracts" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-translation-contracts-d28150f0f44ce854e942b671fc2620a98aae1b1e";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/translation-contracts/zipball/d28150f0f44ce854e942b671fc2620a98aae1b1e";
          sha256 = "0gwqxhrzb9dzsqvqr9lc3whzl8wwlfhwskr0wdwqri4pq5mspb2w";
        };
      };
    };
    "symfony/var-dumper" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "symfony-var-dumper-294e9da6e2e0dd404e983daa5aa74253d92c05d0";
        src = fetchurl {
          url = "https://api.github.com/repos/symfony/var-dumper/zipball/294e9da6e2e0dd404e983daa5aa74253d92c05d0";
          sha256 = "05i1xb75yfv0426s0il80ivda3xq0ls7v87iapcj8hwqd2mzmjk6";
        };
      };
    };
    "tecnickcom/tc-lib-barcode" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tecnickcom-tc-lib-barcode-aca01b1be997404aa14e327f70ef51299423b6c6";
        src = fetchurl {
          url = "https://api.github.com/repos/tecnickcom/tc-lib-barcode/zipball/aca01b1be997404aa14e327f70ef51299423b6c6";
          sha256 = "1rmanaspjzkpzsp66fxwgmdra042pc7v078ga2v2l88xnniay7xq";
        };
      };
    };
    "tecnickcom/tc-lib-color" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tecnickcom-tc-lib-color-ebe0b169122789e4ed6a78d7acd6cf162329c7e4";
        src = fetchurl {
          url = "https://api.github.com/repos/tecnickcom/tc-lib-color/zipball/ebe0b169122789e4ed6a78d7acd6cf162329c7e4";
          sha256 = "1ig97rs6g30557wgpx0z6hssb00pmw1m0ksbizraw9cdkx5wkwrb";
        };
      };
    };
    "tijsverkoyen/css-to-inline-styles" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tijsverkoyen-css-to-inline-styles-da444caae6aca7a19c0c140f68c6182e337d5b1c";
        src = fetchurl {
          url = "https://api.github.com/repos/tijsverkoyen/CssToInlineStyles/zipball/da444caae6aca7a19c0c140f68c6182e337d5b1c";
          sha256 = "13lzhf1kswg626b8zd23z4pa7sg679si368wcg6pklqvijnn0any";
        };
      };
    };
    "tmilos/lexer" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tmilos-lexer-e7885595614759f1da2ff79b66e3fb26d7f875fa";
        src = fetchurl {
          url = "https://api.github.com/repos/tmilos/lexer/zipball/e7885595614759f1da2ff79b66e3fb26d7f875fa";
          sha256 = "0b1dysgnfph13xcc04kvi0kncsq63q1kw973q5ichwl4h9w5qfdk";
        };
      };
    };
    "tmilos/scim-filter-parser" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tmilos-scim-filter-parser-cfd9ba1f33e1e15adcab2481bffd74cb9fb35704";
        src = fetchurl {
          url = "https://api.github.com/repos/tmilos/scim-filter-parser/zipball/cfd9ba1f33e1e15adcab2481bffd74cb9fb35704";
          sha256 = "08vp7p7jbzarmq1dlsiy7wb5klqp6ln8iidhnhq9xcqa1frrfj87";
        };
      };
    };
    "tmilos/scim-schema" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tmilos-scim-schema-bb871e667b33080b4cd36d7a9b2ac2cdbf796062";
        src = fetchurl {
          url = "https://api.github.com/repos/tmilos/scim-schema/zipball/bb871e667b33080b4cd36d7a9b2ac2cdbf796062";
          sha256 = "0k78qica59y2cmad17qcww6gm0caqa1shvv73scgyf0fxzqpay8w";
        };
      };
    };
    "tmilos/value" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "tmilos-value-9e78ad9c026b14cacec1a27552ee0ada9d7d1c06";
        src = fetchurl {
          url = "https://api.github.com/repos/tmilos/value/zipball/9e78ad9c026b14cacec1a27552ee0ada9d7d1c06";
          sha256 = "1lbmm5l0q8mn2qs9jczqk1lc72m77455b3dv774fdfpy8vm2d7iy";
        };
      };
    };
    "unicodeveloper/laravel-password" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "unicodeveloper-laravel-password-806e345ae992e0adf38c4cfa32063d7d7c9d189a";
        src = fetchurl {
          url = "https://api.github.com/repos/unicodeveloper/laravel-password/zipball/806e345ae992e0adf38c4cfa32063d7d7c9d189a";
          sha256 = "1qd63zahc0mw7ypfghm2q1zfq1w3vr58zxh5gdgcx0srlg2v69gc";
        };
      };
    };
    "vlucas/phpdotenv" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "vlucas-phpdotenv-264dce589e7ce37a7ba99cb901eed8249fbec92f";
        src = fetchurl {
          url = "https://api.github.com/repos/vlucas/phpdotenv/zipball/264dce589e7ce37a7ba99cb901eed8249fbec92f";
          sha256 = "0z2q376k3rww8qb9jdywm3fj386pqmcx7rg6msd3zdrjxfbqcqnl";
        };
      };
    };
    "voku/portable-ascii" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "voku-portable-ascii-87337c91b9dfacee02452244ee14ab3c43bc485a";
        src = fetchurl {
          url = "https://api.github.com/repos/voku/portable-ascii/zipball/87337c91b9dfacee02452244ee14ab3c43bc485a";
          sha256 = "1j2xpbv7xiwxwb6gfc3h6imc6xcbyb2jw3h8wgfnpvjl5yfbi4xb";
        };
      };
    };
    "watson/validating" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "watson-validating-fda4daaf804ead4aef641e1fb3f3b40a8448167e";
        src = fetchurl {
          url = "https://api.github.com/repos/dwightwatson/validating/zipball/fda4daaf804ead4aef641e1fb3f3b40a8448167e";
          sha256 = "00i2k7q0n62yy20k6p09j7hwbxxwq1n15gprsp4rl9wbagwwx4m9";
        };
      };
    };
    "webmozart/assert" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "webmozart-assert-6964c76c7804814a842473e0c8fd15bab0f18e25";
        src = fetchurl {
          url = "https://api.github.com/repos/webmozarts/assert/zipball/6964c76c7804814a842473e0c8fd15bab0f18e25";
          sha256 = "17xqhb2wkwr7cgbl4xdjf7g1vkal17y79rpp6xjpf1xgl5vypc64";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "snipe-it";
  src = composerEnv.filterSrc ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {
    license = "AGPL-3.0-or-later";
  };
}

