migrations
doPostUpdateMigrations
	self removeDependent: self browser. "break (old) dependency cycles"
	self scope doPostUpdateMigrations.