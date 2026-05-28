migrations - running
runMigrationsFor: aSelector always: aBoolean
	(self findMigrationsToRunFor: aSelector always: aBoolean) do: [:each |
		self runMigration: each key for: aSelector ordering: each value].