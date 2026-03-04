{ pkgs, ... }:

{
  home.file.".config/hypr" = {
    source = ../configs/hypr;
    recursive = true;
  };
}
