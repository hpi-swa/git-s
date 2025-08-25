updating
forwardChanged: anObject
	self dependents do: [:each |
		each = self browser ifFalse: [each update: anObject]].