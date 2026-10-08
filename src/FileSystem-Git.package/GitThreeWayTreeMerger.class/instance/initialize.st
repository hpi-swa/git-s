initialize-release
initialize
	super initialize.
	self
		conflicts: Dictionary new;
		result: GitTree new.