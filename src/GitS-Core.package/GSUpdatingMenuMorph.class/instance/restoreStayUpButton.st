update
restoreStayUpButton
	| box |
	submorphs isEmpty ifTrue: [^self].
	(submorphs first isAlignmentMorph) ifFalse: [^self].
	box := submorphs first submorphs last.
	(box isKindOf: IconicButton) ifTrue: [box restoreImage].