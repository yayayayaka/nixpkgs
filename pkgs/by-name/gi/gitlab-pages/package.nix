{
  buildGoModule,
  lib,
  fetchFromGitLab,
}:

buildGoModule (finalAttrs: {
  pname = "gitlab-pages";
  version = "18.10.0";

  # nixpkgs-update: no auto update
  src = fetchFromGitLab {
    owner = "gitlab-org";
    repo = "gitlab-pages";
    rev = "v${finalAttrs.version}";
    hash = "sha256-kx5auCx4WmUM48nF9HJtrs0Plq+CYYaOfUh3tH0WB8I=";
  };

  vendorHash = "sha256-EaTYw8ydHMA3Rmr8YJvUxWBIkPhyKLc8zNUsJRTlMmE=";
  subPackages = [ "." ];

  ldflags = [
    "-X"
    "main.VERSION=${finalAttrs.version}"
  ];

  meta = {
    description = "Daemon used to serve static websites for GitLab users";
    mainProgram = "gitlab-pages";
    homepage = "https://gitlab.com/gitlab-org/gitlab-pages";
    changelog = "https://gitlab.com/gitlab-org/gitlab-pages/-/blob/v${finalAttrs.version}/CHANGELOG.md";
    license = lib.licenses.mit;
    teams = [ lib.teams.gitlab ];
  };
})
