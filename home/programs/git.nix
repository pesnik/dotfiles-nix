{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user.name  = "pesnik";
      user.email = "hasanrakibul.masum@gmail.com";

      init.defaultBranch   = "main";
      pull.rebase          = true;
      push.autoSetupRemote = true;
    };

    ignores = [
      ".DS_Store"
      "*.swp"
      ".direnv"
      ".env"
    ];
  };
}
