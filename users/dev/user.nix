{
  name = "dev";
  config = {
    isNormalUser = true;
    description = "Dev";
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
