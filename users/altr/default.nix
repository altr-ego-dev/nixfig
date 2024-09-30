{ pkgs, ... }:

let
  userConfig = import ./user.nix;
  homeConfig = import ./home.nix;
in {
  name = homeConfig.home.username;
  home = homeConfig.home.homeDirectory;

  homeConfig = homeConfig;
  userConfig = userConfig.config;
}
