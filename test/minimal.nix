import <nixpkgs/nixos/tests/make-test.nix> {
	machine = { ... }: {
		imports = [
			../default.nix
		];
	};

	testScript = ''
		$machine->waitForUnit("multi-user.target");
	'';
}
