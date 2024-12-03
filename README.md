# nixos-config

## Build a new system
```
nix-shell -p git vim
```
```
git clone https://github.com/altr-ego-dev/nixos-config.git
```
```
mv nixos-config System && cd System
```
```
sudo nixos-rebuild switch --flake .#FLAKE-NAME
```
