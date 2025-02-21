initialize-release
initialize
	super initialize.
	self
		parent: nil;
		label: 'root';
		children: Dictionary new.