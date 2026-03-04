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
        if [ -e /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh ]; then
          . /nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh
        fi

        export PATH="$HOME/.nix-profile/bin:/nix/var/nix/profiles/default/bin:$PATH"

        export PATH="$HOME/.npm-global/bin:$PATH"
    '';
  };
}
