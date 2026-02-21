{ ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window.padding = { x = 8; y = 8; };
      font = {
        normal.family = "JetBrainsMono Nerd Font";
        size = 13.0;
      };
      colors.primary = {
        background = "#1e1e2e";
        foreground = "#cdd6f4";
      };
    };
  };
}
