converting
asNonOwning
	^ self copy
		entries: (self entries collect: #asNonOwning);
		yourself