{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/fbcb61bd7eb19914cbd88789c3586a63ff46b72b.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
  ];

  shellHook = ''
    if command -v fish &> /dev/null
    then
      fish
    fi
  '';
}