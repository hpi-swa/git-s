accessing
findRef: aString ifFound: foundBlock ifNone: noneBlock
	self ref = aString ifTrue: [^ foundBlock value: self].
	self children do: [:each |
		each findRef: aString ifFound: [:found | ^ foundBlock value: found] ifNone: []].
	^ noneBlock value