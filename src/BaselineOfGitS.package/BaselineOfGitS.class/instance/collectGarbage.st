migrations
collectGarbage
	<postLoadMigrationAlways: 2>
	"collect old morphs to prevent double updates, like commitList"
	Smalltalk garbageCollect.