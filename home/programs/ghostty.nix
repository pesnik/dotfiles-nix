{ ... }:

{
  programs.ghostty = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      font-family = "JetBrainsMono Nerd Font";
      font-size = 13;
      background-opacity = 0.95;
      window-padding-x = 8;
      window-padding-y = 8;
      theme = "Catppuccin Mocha";
    };
  };
}
