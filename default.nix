let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs { };
in
{
  linux_5_15 = pkgs.callPackage ./pkgs/os-specific/linux/kernel/linux-5.15.nix { };
}
