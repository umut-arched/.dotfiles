# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, lib, ... }:

{
	services.xserver.displayManager.gdm.enable = true;
	#services.xserver.desktopManager.gnome.enable = true;

   services.xserver.windowManager.i3 = {
   enable = true;
 };

   environment.systemPackages = with pkgs; [
		waybar
		kitty
		rofi-wayland
		wofi
		mako

		kitty
		brightnessctl
		autotiling
		dmenu
		termite
		arandr
		autorandr
		flameshot
		rofi
		networkmanagerapplet
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
