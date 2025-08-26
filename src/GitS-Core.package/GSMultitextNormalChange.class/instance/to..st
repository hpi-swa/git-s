accessing
to: anObject
	to := anObject.
	self
		changed: #text;
		changed: #isRemoval.