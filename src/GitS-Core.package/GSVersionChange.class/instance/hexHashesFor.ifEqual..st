testing
hexHashesFor: aMapper ifEqual: aBlock
	| hexHashes |
	hexHashes := self hexHashesFor: aMapper.
	hexHashes current = hexHashes incoming ifFalse: [^ self].
	aBlock value: (GSEmptyChangeSet withMapper: self).