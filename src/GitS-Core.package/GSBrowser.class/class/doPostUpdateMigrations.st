self-update
doPostUpdateMigrations
	self allInstances do: #doPostUpdateMigrations.
	"collect old morphs to prevent double updates, like commitList"
	Smalltalk garbageCollect.