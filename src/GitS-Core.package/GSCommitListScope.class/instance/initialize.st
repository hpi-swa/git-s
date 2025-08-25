initialize-release
initialize
	super initialize.
	self
		includeActiveRef: true;
		includeHead: false;
		includeBranches: false;
		includeRemotes: false;
		includeAllRefs: false.