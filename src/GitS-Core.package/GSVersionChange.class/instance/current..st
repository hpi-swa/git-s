accessing
current: anObject
	current := anObject.
	self
		changed: #current;
		markAsEdited.