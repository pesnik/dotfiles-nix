pesnikos-hm:
	nix run home-manager/master -- switch --flake ~/dotfiles#pesnik@PesnikOS
	
sandbox-hm:
	nix run home-manager/master -- switch --flake ~/dotfiles#pesnik@sandbox

hyprland-rebuild:
	home-manager switch --flake ~/dotfiles#pesnik@PesnikOS

hyprland-reload:
	hyprctl reload
