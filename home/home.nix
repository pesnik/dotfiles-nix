{ pkgs, ... }:

{
  imports = [
    ./programs/zsh.nix
    ./programs/neovim.nix
    ./programs/git.nix
    ./programs/ghostty.nix
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
    nerd-fonts.jetbrains-mono
  ];

  programs.home-manager.enable = true;

  home.stateVersion = "25.11";
}
