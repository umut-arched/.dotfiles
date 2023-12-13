# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, lib, ... }:

{
   services.xserver.windowManager.i3 = {
   enable = true;
 };

   programs.hyprland = {
	enable = true;
	enableNvidiaPatches = true;
	xwayland.enable = true;
 };

 environment.sessionVariables = {
	WLR_NO_HARDWARE_CURSORS = "1";
	NIXOS_OZONE_WL = "1";
 };
  services.dbus.enable = true;
    security.pam.services.swaylock = {};
	programs.light.enable = true;

	  # kanshi systemd service
  systemd.user.services.kanshi = {
    description = "kanshi daemon";
    serviceConfig = {
      Type = "simple";
      ExecStart = ''${pkgs.kanshi}/bin/kanshi -c kanshi_config_file'';
    };
  };


   environment.systemPackages = with pkgs; [
		waybar
		mako
		libnotify
		swww
		kitty
		swaylock
		rofi-wayland
		wofi
		kanshi
		wdisplays
		wlr-randr
		wl-gammactl


		dmenu
		arandr
		autorandr
		gnome.gnome-terminal
		flameshot
		rofi
		networkmanagerapplet
		brightnessctl
		picom
		dunst
		playerctl
		sxhkd
		i3lock-color
		feh
		graphite-cursors
		graphite-gtk-theme
		numix-cursor-theme
		apple-cursor
		volumeicon
		whitesur-cursors
		luna-icons
		tango-icon-theme
		numix-icon-theme
		polybar
		sierra-breeze-enhanced
		lxappearance
		pavucontrol
   ];
}
