{ lib, config, pkgs, ...}: 
{
  imports = [ ./home.nix ];

  options = {
    user."dev".enable = lib.mkEnableOption {
      description = "Enable user: dev";
      default = false;
    };
  };

  config = lib.mkIf cfg.user."dev".enable {
    users.users."dev" = {
      isNormalUser = true;
      initialPassword = "123";
      description = "dev";
    };
  };  
}
