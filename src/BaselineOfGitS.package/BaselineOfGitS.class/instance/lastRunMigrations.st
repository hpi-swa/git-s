migrations - running
lastRunMigrations
	^ LastRunMigrations ifNil: [LastRunMigrations := Dictionary new]