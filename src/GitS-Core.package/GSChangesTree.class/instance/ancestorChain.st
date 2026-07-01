accessing
ancestorChain
	^ self parent ifNil: [#()] ifNotNil: [:tree | tree ancestorChain copyWith: self]