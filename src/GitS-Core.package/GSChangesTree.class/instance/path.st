accessing
path
	^ (self parent ifNil: [^ {}]) path copyWith: self label