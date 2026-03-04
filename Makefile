pesnikos-hm:
	nix run home-manager/master -- switch --flake ~/dotfiles#pesnik@PesnikOS

hyprland-rebuild:
	home-manager switch --flake ~/dotfiles#pesnik@PesnikOS

hyprland-reload:
	hyprctl reload
