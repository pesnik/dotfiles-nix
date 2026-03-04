{ pkgs, ... }:

{
  home.file."/home/pesnik/.config/hypr" = {
    source = ../configs/hypr;
    recursive = true;
  };
}
