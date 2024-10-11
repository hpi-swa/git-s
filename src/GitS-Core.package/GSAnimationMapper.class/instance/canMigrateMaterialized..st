migrations
canMigrateMaterialized: anObject
	^ (super canMigrateMaterialized: anObject) or: [self isObsoleteSquotAnimation: anObject]