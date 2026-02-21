{ pkgs, ... }:

{
  programs.neovim = {
    enable        = true;
    defaultEditor = true;
    viAlias       = true;
    vimAlias      = true;

    extraPackages = with pkgs; [
      lua-language-server
      nil
    ];
  };

  # Uncomment to manage your nvim lua config from this repo:
  # xdg.configFile."nvim" = {
  #   source = ../../config/nvim;
  #   recursive = true;
  # };
}
