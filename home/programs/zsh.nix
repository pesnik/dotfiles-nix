{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      ll      = "ls -la";
      ".."    = "cd ..";
      rebuild = "sudo nixos-rebuild switch --flake ~/dotfiles#nixos";
      update  = "nix flake update ~/dotfiles";
    };

    initContent = ''
      # extra zsh config here
    '';
  };
}
