{ pkgs, ... }:

{
  imports = [
    ../home.nix
  ];

  # Machine-specific overrides go here
  home.packages = with pkgs; [
    less # because git diff requires this
  ];

}
