initialize-release
initialize
	super initialize.
	self
		path: FSPath root;
		encoding: self class defaultEncoding.