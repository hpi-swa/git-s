collisions
collidingMappersAfterSerializeInto: aFileSystem
	| mappersChangeSet |
	mappersChangeSet := self changeSets
		detect: [:each | each isKindOf: SquotMetadataMappersChangeSet]
		ifNone: [^ {}].
	^ mappersChangeSet collidingMappersAfterSerializeInto: aFileSystem