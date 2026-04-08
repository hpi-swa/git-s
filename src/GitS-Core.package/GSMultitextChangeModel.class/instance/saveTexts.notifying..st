ui
saveTexts: aCollection notifying: requestors
	| newVersion |
	self isEditable ifFalse: [^ self inform: 'Cannot edit a removal'].
	self isInEditMode ifFalse: [^ self inform: 'Please enter edit mode first'].
	newVersion := self incoming
						copyWithSources: aCollection
						notifying: requestors
						ifFail: [:message | ^ self inform: 'Error: ', message asString].
	self
		incoming: newVersion;
		isInEditMode: false.