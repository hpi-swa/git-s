change-log
fetchChangeLogFrom: oldHexHashString to: newHexHashString on: aStream ifFail: aBlock
	1 to: Float infinity do: [:page |
		aStream nextPutAll: ((self
			fetchChangeLogFrom: oldHexHashString
			to: newHexHashString
			page: page
			ifFail: [^ aBlock value])
				ifEmpty: [^ self])].