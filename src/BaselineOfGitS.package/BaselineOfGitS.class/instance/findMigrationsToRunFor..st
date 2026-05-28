migrations - running
findMigrationsToRunFor: aSelector
	^ (self findMigrationsFor: aSelector) select: [:each | each value > (self lastRunMigrationFor: aSelector)]