{ config, pkgs, ... }:
{
  services.xserver.enable = true;
  services.xserver.autorun = true;
  services.xserver.displayManager.startx.enable = true;

  environment.systemPackages = with pkgs; [
    hyprland
    hyprpaper
  ];

  programs.hyprland.enable = true;

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    XDG_SESSION_TYPE = "wayland";
    XDG_CURRENT_DESKTOP = "Hyprland";
    WLR_NO_HARDWARE_CURSORS = "1";
  };

  # Setting .bash_profile for all new profiles
  # environment.etc."skel/.bash_profile".text = ''
  #   if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  #     exec Hyprland
  #   fi
  # '';

  # # Setting .bash_profile to all exists profiles when every building
  # system.activationScripts.installBashProfile.text = ''
  #   for user in $(ls /home); do
  #     profile="/home/$user/.bash_profile"
  #     if [ ! -f "$profile" ]; then
  #       echo "Installing .bash_profile for $user"
  #       cat <<EOF > "$profile"
  #         if [[ -z \$DISPLAY ]] && [[ \$(tty) = /dev/tty1 ]]; then
  #           exec Hyprland
  #         fi
  #       EOF
  #       chown $user:$user "$profile"
  #     fi
  #   done
  # '';
}