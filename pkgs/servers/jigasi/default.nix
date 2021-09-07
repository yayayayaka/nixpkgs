{ lib, stdenv, fetchurl, dpkg, jdk11, nixosTests }:

stdenv.mkDerivation rec {
  pname = "jigasi";
  version = "1.1-288-gccf44d7";

  src = fetchurl {
    url = "https://download.jitsi.org/stable/jigasi_${version}-1_all.deb";
    sha256 = "sha256-m4uvgW97YHhTAx+bZBq+yBxSDifbxt3MLTHnlYru0xY=";
  };

  nativeBuildInputs = [ dpkg ];

  dontBuild = true;

  unpackCmd = "dpkg-deb -x $src debcontents";

  installPhase = ''
    runHook preInstall
    substituteInPlace usr/share/jigasi/jigasi.sh \
      --replace "exec java" "exec ${jdk11}/bin/java"

    mkdir -p $out/{share,bin}
    mv usr/share/jigasi $out/share/
    mv etc $out/
    ln -s $out/share/jigasi/jigasi.sh $out/bin/jigasi
    runHook postInstall
  '';

  passthru.tests = {
    single-node-smoke-test = nixosTests.jitsi-meet;
  };

  meta = with lib; {
    description = "A server-side application that allows regular SIP clients to join Jitsi Meet conferences";
    longDescription = ''
      Jitsi Gateway to SIP: a server-side application that allows regular SIP clients to join Jitsi Meet conferences hosted by Jitsi Videobridge.
    '';
    homepage = "https://github.com/jitsi/jigasi";
    license = licenses.asl20;
    maintainers = teams.jitsi.members;
    platforms = platforms.linux;
  };
}
