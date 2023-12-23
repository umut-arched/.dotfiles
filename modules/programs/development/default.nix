# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running `nixos-help`).

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  	vscode
	python39Full
	python39
	python39Packages.pip
	python39Packages.virtualenv
	jetbrains-toolbox
	git
	ghidra
	gdb
	nmap
	ngrok
	insomnia
	maven
	nodejs
	jdk17
  ];
}

