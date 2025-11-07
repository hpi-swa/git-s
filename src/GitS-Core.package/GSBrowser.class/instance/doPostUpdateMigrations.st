migrations
doPostUpdateMigrations
	self commitList doPostUpdateMigrations.
	self rebuild.