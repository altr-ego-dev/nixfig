{ lib, config, pkgs, ... }:

let
  cfg = config.main-user;
in
{
  options.main-user = {
    enable = lib.mkEnableOption "enable user module";
    userName = lib.mkOption {
      default = "altr";
      description = "username";
    };
  };

  config = lib.mkIf cfg.enable {
    users.users.${cfg.userName} = {
      isNormalUser = true;
      initialPassword = "123";
      description = cfg.userName;
      shell = pkgs.bash;	
      extraGroups = [ "networkmanager" "wheel" ];
      packages = with pkgs; [

      ];
    };
  };
}
