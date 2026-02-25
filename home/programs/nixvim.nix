{ inputs, pkgs, ... }:

{
  imports = [ inputs.nixvim.homeManagerModules.nixvim ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    colorschemes.catppuccin = {
      enable = true;
      settings.flavour = "mocha";
    };

    plugins = {
      lualine.enable = true;
      telescope.enable = true;
      treesitter.enable = true;
      oil.enable = true;

      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          lua_ls.enable = true;
        };
      };

      cmp = {
        enable = true;
        autoEnableSources = true;
        settings.sources = [
          { name = "nvim_lsp"; }
          { name = "buffer"; }
          { name = "path"; }
        ];
      };
    };

    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 4;
      tabstop = 4;
      expandtab = true;
      wrap = false;
      scrolloff = 8;
    };

    globals.mapleader = " ";

    keymaps = [
      { key = "<leader>ff"; action = "<cmd>Telescope find_files<cr>"; }
      { key = "<leader>fg"; action = "<cmd>Telescope live_grep<cr>"; }
      { key = "<leader>e";  action = "<cmd>Oil<cr>"; }
    ];
  };
}
