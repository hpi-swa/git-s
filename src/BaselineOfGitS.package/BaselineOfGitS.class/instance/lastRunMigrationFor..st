migrations - running
lastRunMigrationFor: aSymbol
	^ self lastRunMigrations at: aSymbol ifAbsent: [0]