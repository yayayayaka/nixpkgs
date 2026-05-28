{
  lib,
  buildGo125Module,
  fetchFromGitLab,
}:

buildGo125Module rec {
  pname = "gitlab-container-registry";
  version = "4.40.1";
  rev = "v${version}-gitlab";

  # nixpkgs-update: no auto update
  src = fetchFromGitLab {
    owner = "gitlab-org";
    repo = "container-registry";
    inherit rev;
    hash = "sha256-nav47QATA09UZ2L5tL1JmQ5amK/Yvl0G9RmKgmCSbRY=";
  };

  vendorHash = "sha256-kCRe6UufOuR1zDQNHf1P5HmSlqiKMIPCgG75JIEjLzY=";

  excludedPackages = [
    "devvm/*"
  ];

  checkFlags =
    let
      skippedTests = [
        # requires internet
        "TestHTTPChecker"
        # requires s3 credentials/urls
        "TestS3DriverPathStyle"
        # flaky
        "TestPurgeAll"
      ];
    in
    [ "-skip=^${builtins.concatStringsSep "$|^" skippedTests}$" ];

  __darwinAllowLocalNetworking = true;

  meta = {
    description = "GitLab Docker toolset to pack, ship, store, and deliver content";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [ e1mo ];
    teams = with lib.teams; [ gitlab ];
    platforms = lib.platforms.unix;
    mainProgram = "registry";
  };
}
