initialize-release
initialize
	super initialize.
	self
		commands: OrderedCollection new;
		labels: Dictionary new;
		refsToUpdate: Dictionary new;
		originalHeadCommit: nil.