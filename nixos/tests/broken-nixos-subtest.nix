import ./make-test-python.nix ({ pkgs, lib, ...  }: {
  name = "broken-nixos-subtest";

  nodes.lab = {};

  testScript = ''
    start_all()

    with subtest("make a test fail (should bring you back to the python console)"):
        lab.succeed("exit 1")
  '';
})
