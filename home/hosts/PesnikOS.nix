{ pkgs, ... }:

{
  imports = [
    ../home.nix
    ../programs/hyprland.nix
  ];

  # Machine-specific overrides go here
  home.packages = with pkgs; [
    less # because git diff requires this
    nodejs
  ];

}
