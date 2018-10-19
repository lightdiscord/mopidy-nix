import <nixpkgs/nixos/tests/make-test.nix> {
	name = "home-manager-mopidy-test";

	machine = { ... }: {
		imports = [
			"${(fetchTarball https://github.com/rycee/home-manager/archive/master.tar.gz)}/nixos"
		];

		users.users.foo = {
			isNormalUser = true;
		};

		home-manager.users.foo = {...}: {
			imports = [
				../default.nix
			];

			services.mopidy = {
				enable = true;
			};
		};
	};

	testScript = ''
		$machine->waitForUnit("default.target");
	'';
}

