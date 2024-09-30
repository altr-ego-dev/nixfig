{ pkgs, ... }:

let
  userConfig = import ./user.nix;
  homeConfig = import ./home.nix;
in {
  name = userConfig.name;
  home = homeConfig.home;

  userConfig = userConfig.config;
  homeConfig = homeConfig;
}
