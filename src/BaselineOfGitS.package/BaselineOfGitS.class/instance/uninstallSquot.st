migrations
uninstallSquot
	<postLoadMigration: 4>
	{'SquotTonel'. 'Squit'. 'Squot'. 'SquotCompatibility'. 'BaselineOfSquot'} do: [:each |
		(MCPackage named: each) unload].