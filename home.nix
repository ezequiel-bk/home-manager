{ config, pkgs, ... }:
{
  imports = [
    ./secrets/default.nix
    ./programs/default.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "ezequiel_bk";
  home.homeDirectory = "/home/ezequiel_bk";

  home.stateVersion = "24.11"; # Please read the comment before changing.
  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [ "Iosevka" ]; })
  ];

  fonts.fontconfig.enable = true;

  home.file = {};

  home.sessionVariables = {};

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
  