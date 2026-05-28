migrations - running
findMigrationsFor: aSelector
	"
	self new findMigrationsFor: #preLoadMigration:
	self new findMigrationsFor: #postLoadMigration:
	self new findMigrationsFor: #postLoadMigrationAlways:
	"
	^ ((Pragma allNamed: aSelector in: self class)
		collect: [:each | each selector -> (each argumentAt: 1)])
		sorted: #value ascending