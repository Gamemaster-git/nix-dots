{inputs, ...}: {
  system.autoUpgrade = {
    enable = true;
    flake = inputs.self.outPath;
    flags = [
      "--update-input"
      "nixpkgs"
      "--print-build-logs"
    ];
    dates = "02:00";
    randomizedDelaySec = "45min";
  };
}
