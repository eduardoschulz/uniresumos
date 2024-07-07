{
  description = "mkdocs dev environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.11";
  };

  outputs = { self , nixpkgs ,... }: let
    # system should match the system you are running on
    # system = "x86_64-linux";
    system = "x86_64-linux";
  in {
    devShells."${system}".default = let
      pkgs = import nixpkgs {
        inherit system;
      };
    in pkgs.mkShell {
			#installing tools and libs
      packages = with pkgs; [
				mkdocs
      ];

      shellHook = ''
				PS1='\[\e[38;5;27;1;3m\](flake) \[\e[0;92m\]\u\[\e[38;5;32m\]@\[\e[91m\]\h\[\e[0m\]\w '
      '';
    };
  };
}
