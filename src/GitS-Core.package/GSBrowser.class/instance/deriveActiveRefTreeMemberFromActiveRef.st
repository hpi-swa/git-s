accessing
deriveActiveRefTreeMemberFromActiveRef
	self activeRefTreeMember: (self activeRef ifNotNil: [:ref | self refTree ensure: ref]).