enumerating
enumerate: aSymbol
	self selectBlock ifNotNil: [:block |
		(block cull: aSymbol cull: self) ifFalse: [^ self]].
	self doBlock cull: aSymbol cull: self.