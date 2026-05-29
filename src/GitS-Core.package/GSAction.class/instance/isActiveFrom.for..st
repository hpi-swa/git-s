accessing
isActiveFrom: isActiveObject for: receiverObject
	isActiveObject isBlock ifTrue: [^ self isActiveBlock: isActiveObject].
	isActiveObject isSymbol ifTrue: [^ self isActiveBlock: [receiverObject perform: isActiveObject]].
	isActiveObject isBoolean ifTrue: [^ self isActive: isActiveObject].
	self error: 'invalid object type for action''s isActive'.