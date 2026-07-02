initialize-release
initialize
	super initialize.
	self path: FSPath root.
	self class cachedAllSubInstances add: self.