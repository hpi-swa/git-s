accessing
incoming: anObject
	incoming := anObject.
	self
		changed: #incoming;
		markAsEdited.