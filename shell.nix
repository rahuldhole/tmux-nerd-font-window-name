{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs;[
    tmux
    nodePackages.bash-language-server
  ];
}
