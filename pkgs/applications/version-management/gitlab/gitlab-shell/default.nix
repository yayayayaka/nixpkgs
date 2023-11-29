{ lib, fetchFromGitLab, buildGoModule, ruby, libkrb5 }:

buildGoModule rec {
  pname = "gitlab-shell";
  version = "14.30.0";

  # nixpkgs-update: no auto update
  src = fetchFromGitLab {
    owner = "gitlab-org";
    repo = "gitlab-shell";
    rev = "v${version}";
    sha256 = "sha256-QG8HE2ehsD3MgNIsfQEGILioUhg2KoTPf0R122qpVdM=";
  };

  buildInputs = [ ruby libkrb5 ];

  patches = [ ./remove-hardcoded-locations.patch ];

  vendorHash = "sha256-LuTa+wuoIMERhKycqlrm8fyR15ARcd1VQWIgt/pWch8=";

  postInstall = ''
    cp -r "$NIX_BUILD_TOP/source"/bin/* $out/bin
    cp -r "$NIX_BUILD_TOP/source"/{support,VERSION} $out/
  '';
  doCheck = false;

  meta = with lib; {
    description = "SSH access and repository management app for GitLab";
    homepage = "http://www.gitlab.com/";
    platforms = platforms.linux;
    maintainers = teams.gitlab.members;
    license = licenses.mit;
  };
}
