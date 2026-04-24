initialize-release
initialize
	super initialize.
	self
		deferMaterializationLevel: 0;
		enableBatching.