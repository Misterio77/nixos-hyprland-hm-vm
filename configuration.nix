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

  # If running on VM. E.g. through:
  # nix run .#nixosConfiguration.nixos.config.system.build.vm
  virtualisation.vmVariant = {
    # Autologin, passwordless sudo
    services.getty.autologinUser = "fulano";
    security.sudo.wheelNeedsPassword = false;

    # QEMU options to run hardware-accelerated VM
    virtualisation.qemu.options = [
      "-vga virtio"
      "-device virtio-gpu-gl"
      "-display gtk,gl=on"
    ];
  };
}
