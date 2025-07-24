# Установка системы

## Разметка с помощью DISKO

```bash
git clone https://github.com/EarWarm/nixos-config.git
cd nixos
nixos-generate-config --root /mnt --no-filesystems --dir ./nixos

nix run github:nix-community/disko -- --mode disko --flake .
nixos-install --root /mnt --flake .
```