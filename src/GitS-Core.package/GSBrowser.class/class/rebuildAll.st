self-update
rebuildAll
	self allInstances do: #rebuild.
	"collect old morphs to prevent double updates, like commitList"
	Smalltalk garbageCollect.