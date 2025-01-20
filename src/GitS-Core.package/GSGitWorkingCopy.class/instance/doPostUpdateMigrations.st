migrations
doPostUpdateMigrations
	self withUnitOfWork: [
		super doPostUpdateMigrations.
		self doImageHashMigration].