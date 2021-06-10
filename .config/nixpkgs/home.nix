{ config, pkgs, ... }:

{
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.zsh = {
    enable = true;
    enableCompletion = true;

    prezto = {
      enable = true;

      editor.keymap = "vi";

      pmodules = [
        "environment"
        "editor"
        "history"
        "directory"
        "spectrum"
        "utility"
        "completion"
        "prompt"
        "git"
      ];
    };
  };

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "yoeight";
  home.homeDirectory = "/home/yoeight";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";
}
