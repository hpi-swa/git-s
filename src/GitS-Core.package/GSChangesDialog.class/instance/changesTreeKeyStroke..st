ui
changesTreeKeyStroke: aCharacter
	self currentEvent anyModifierKeyPressed ifFalse: [^ false].
	^ (self selectedChange ifNil: [self changesTree]) keyStroke: aCharacter