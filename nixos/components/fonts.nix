{ config, pkgs, ... }:
{
	# Setting font (Default: JetBrains Mono)
	fonts = {
		enableDefaultPackages = true;

		packages = with pkgs; [
			jetbrains-mono
		];
	};
}