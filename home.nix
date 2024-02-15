{
  wayland.windowManager.hyprland = {
    enable = true;
    settings.bind = [
      "SUPER,Return,exec,alacritty"
      "SUPER,b,exec,firefox"
    ];
  };
  wayland.windowManager.sway = {
    enable = true;
  };

  programs = {
    alacritty.enable = true;
    firefox.enable = true;
    bash.enable = true;
  };

  home = {
    sessionVariables = {
      WLR_RENDERER_ALLOW_SOFTWARE = "1";
      WLR_RENDERER = "pixman";
      WLR_NO_HARDWARE_CURSORS = "1";
    };
    username = "misterio";
    homeDirectory = "/home/misterio";
    stateVersion = "23.11";
  };
}
