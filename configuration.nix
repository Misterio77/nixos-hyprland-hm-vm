{
  nixpkgs.hostPlatform = "x86_64-linux";
  system.stateVersion = "23.11";

  hardware.opengl.enable = true;
  security.polkit.enable = true;

  users.users.fulano = {
    extraGroups = ["wheel"];
    isNormalUser = true;
  };

  home-manager = {
    users.fulano = import ./home.nix;
    useUserPackages = true;
  };

  # If running on VM
  virtualisation.vmVariant = {
    services.getty.autologinUser = "fulano";
    security.sudo.wheelNeedsPassword = false;
    services.spice-vdagentd.enable = true;

    virtualisation.qemu.options = [
      "-vga virtio"
      "-device virtio-vga-gl"
      "-display gtk,gl=on,show-cursor=off"
    ];
  };
}
