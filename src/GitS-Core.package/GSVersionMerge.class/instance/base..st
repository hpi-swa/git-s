accessing
base: anObject
	base := anObject.
	self
		changed: #base;
		markAsEdited.