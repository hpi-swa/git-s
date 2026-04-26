self-update
doPostUpdateMigrations
	self allSubInstances do: #doPostUpdateMigrations.
	"collect old morphs to prevent double updates, like commitList"
	Smalltalk garbageCollect.