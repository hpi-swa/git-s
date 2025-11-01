migrations
doPostUpdateMigrations
	self commitList removeDependent: self. "old versions of git/s had dependency cycles, break them"
	self rebuild.