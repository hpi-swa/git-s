instance creation
morph: aMorph localPosition: aPoint
	^ (self morph: aMorph position: aPoint)
		toWorldPosition;
		yourself