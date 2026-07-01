accessing
deriveActiveRefTreeMemberFromActiveRef
	self activeRefTreeMember: (self activeRef ifNotNil: [:ref | self refTree findRef: ref ifNone: [nil]]).