# mopidy-nix

Configure Mopidy with home-manager.

```nix
{ ... }:

{
	imports = [
		(fetchTarball https://github.com/lightdiscord/mopidy-nix/archive/master.tar.gz)
	];

	services.mopidy.enable = true;
}
```

---

## See Also

* Thanks to [mopidy.nix](https://github.com/NixOS/nixpkgs/blob/master/nixos/modules/services/audio/mopidy.nix) contributors.
* [rycee/home-manager](https://github.com/rycee/home-manager)
