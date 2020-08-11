self: super: {
  # https://discourse.nixos.org/t/nix-haskell-development-2020/6170/2
  haskellPackages = super.haskellPackages.override  {
    overrides = hself: hsuper: rec {
      mkDerivation = args: hsuper.mkDerivation (args // {
        doCheck = false;                                  doHaddock = false;                                dontStrip = true;                                 #enableLibraryProfiling = false;
	#enableExecutableProfiling = false;
	jailbreak = true;                               });
    };                                              };
}
