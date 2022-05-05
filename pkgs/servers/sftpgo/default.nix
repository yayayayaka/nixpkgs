{ lib
, buildGoModule
, fetchFromGitHub
}:

buildGoModule rec {
  pname = "sftpgo";
  version = "2.2.3";

  src = fetchFromGitHub {
    owner = "drakkan";
    repo = "sftpgo";
    rev = "v${version}";
    sha256 = "0bw5x4ndw8iasfipw37ddgqc62dvx37x99yfv7r14z3xp03jlnpv";
  };

  vendorSha256 = "1sl03hi66ksjjsb6za1ah321kc1kxpadnih8yrfc3x2k21sidcl8";
  subPackages = [ "." ];

  postInstall = ''
    cp -r $src/{openapi,static,templates} $out/
  '';

  meta = with lib; {
    description = "A command line utility for creating image macro style memes";
    homepage = "https://github.com/nomad-software/meme";
    license = licenses.mit;
    maintainers = with maintainers; [ yayayayaka ];
  };
}

