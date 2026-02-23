{ config, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/kde.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/sda";
  boot.loader.grub.useOSProber = true;

  networking.hostName = "nixos";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Dhaka";

  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS        = "bn_BD";
    LC_IDENTIFICATION = "bn_BD";
    LC_MEASUREMENT    = "bn_BD";
    LC_MONETARY       = "bn_BD";
    LC_NAME           = "bn_BD";
    LC_NUMERIC        = "bn_BD";
    LC_PAPER          = "bn_BD";
    LC_TELEPHONE      = "bn_BD";
    LC_TIME           = "bn_BD";
  };

  users.users.pesnik = {
    isNormalUser = true;
    description  = "Pesnik";
    extraGroups  = [ "networkmanager" "wheel" ];
  };

  environment.systemPackages = with pkgs; [
    vim
    git
    tree
  ];

  programs.firefox.enable = true;
  nixpkgs.config.allowUnfree = true;

  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable            = true;
    alsa.enable       = true;
    alsa.support32Bit = true;
    pulse.enable      = true;
  };

  services.printing.enable = true;

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "25.11";
}
