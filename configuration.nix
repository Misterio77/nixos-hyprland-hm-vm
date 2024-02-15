{
  nixpkgs.hostPlatform = "x86_64-linux";
  system.stateVersion = "23.11";

  users.users.misterio = {
    extraGroups = ["wheel"];
    isNormalUser = true;
  };

  hardware.opengl.enable = true;
  security.polkit.enable = true;

  home-manager.users.misterio = import ./home.nix;

  # If running on VM
  virtualisation.vmVariant = {
    services.getty.autologinUser = "misterio";
    security.sudo.wheelNeedsPassword = false;

    virtualisation.qemu.options = [
      "-vga none"
      "-device virtio-vga-gl"
      "-display gtk,gl=on,show-cursor=off"
    ];
  };
}
