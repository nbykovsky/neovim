{
  description = "Flake provides neovim configuration";
  
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/21.11";
  };

  outputs = { self, nixpkgs }: 
  let
    config = import ./nvim.nix;
  in
  {
    
    vimConfig = config {pkgs = nixpkgs.legacyPackages.x86_64-linux;}; 

  };
}
