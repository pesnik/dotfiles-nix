{ pkgs, ... }:

{
  imports = [
    ./programs/zsh.nix
    ./programs/neovim.nix
    ./programs/git.nix
    ./programs/alacritty.nix
  ];

  home.username = "pesnik";
  home.homeDirectory = "/home/pesnik";

  home.packages = with pkgs; [
    tmux
    ripgrep
    fd
    bat
    fzf
    htop
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "25.11";
}
