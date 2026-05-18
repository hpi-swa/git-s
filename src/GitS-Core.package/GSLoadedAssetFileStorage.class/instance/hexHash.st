accessing
hexHash
	^ hexHash ifNil: [hexHash := self computeHexHash]