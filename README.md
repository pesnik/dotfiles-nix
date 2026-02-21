# dotfiles-nix

NixOS system + Home Manager configuration managed with Nix Flakes.

## Structure
```
.
├── flake.nix                        # entry point
├── flake.lock                       # pinned versions
├── hosts/
│   └── nixos/
│       ├── configuration.nix
│       └── hardware-configuration.nix
├── modules/
│   └── nixos/
│       └── kde.nix
└── home/
    ├── home.nix                     # shared across machines
    ├── hosts/
    │   └── nixos.nix                # machine-specific overrides
    └── programs/
        ├── zsh.nix
        ├── neovim.nix
        ├── git.nix
        └── alacritty.nix
```

## Apply
```bash
# Full system rebuild
sudo nixos-rebuild switch --flake ~/dotfiles#nixos

# Update flake inputs
nix flake update
```

## New Machine

1. Add `hosts/<hostname>/` with its `hardware-configuration.nix`
2. Add `nixosConfigurations.<hostname>` in `flake.nix`
3. Add `home/hosts/<hostname>.nix` for user overrides
