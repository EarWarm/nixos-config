{ config, pkgs, ... }:
{
	# Setting font (Default: JetBrains Mono)
	fonts = {
		enableDefaultFonts = true;

		fonts = with pkgs; [
			jetbrains-mono
		];
	}
}