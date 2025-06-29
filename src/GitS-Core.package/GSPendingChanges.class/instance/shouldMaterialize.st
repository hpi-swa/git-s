testing
shouldMaterialize
	self shouldAlwaysMaterialize ifTrue: [^ true].
	self dialog ifNil: [^ false].
	self dialog wasEdited ifFalse: [^ false].
	(self confirm: 'You edited some changes. Do you wish to load them into the image?') ifTrue: [^ true].
	self dialog canDiscardEdits: true.
	^ false