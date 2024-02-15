{
  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      bind = [
        "SUPER,return,exec,alacritty"
        "SUPER,d,exec,wofi --show drun"
        "SUPER,b,exec,firefox"

        "SUPERSHIFT,q,killactive"
        "SUPERSHIFT,e,exit"

        "SUPER,h,movefocus,l"
        "SUPER,j,movefocus,d"
        "SUPER,k,movefocus,u"
        "SUPER,l,movefocus,r"
        "SUPERSHIFT,h,swapwindow,l"
        "SUPERSHIFT,j,swapwindow,d"
        "SUPERSHIFT,k,swapwindow,u"
        "SUPERSHIFT,l,swapwindow,r"
        "SUPERCONTROL,h,movewindow,l"
        "SUPERCONTROL,j,movewindow,d"
        "SUPERCONTROL,k,movewindow,u"
        "SUPERCONTROL,l,movewindow,r"
      ];
    };
  };

  programs = {
    alacritty.enable = true;
    wofi.enable = true;
    firefox.enable = true;
    bash.enable = true;
  };

  home = {
    username = "fulano";
    homeDirectory = "/home/fulano";
    stateVersion = "23.11";
  };
}
