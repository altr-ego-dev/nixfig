{ lib, config, pkgs, ...}: 
{
  options = {
    user."cyber".enable = lib.mkEnableOption {
      description: "Enable user: cyber";
      default = false;
    };
  };

  config = lib.mkIf cfg.user."cyber".enable {
    users.users."cyber" = {
      isNormalUser = true;
      initialPassword = "123";
      description = "cyber";
    };
  };  
}
