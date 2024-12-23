menu
refListMenu: aMenu
	self activeWorkingCopy ifNil: [^ aMenu].
	self activeRefTreeMember ifNil: [^ aMenu].
	self activeRefTreeMember ref = self activeRef ifFalse: [^ aMenu].
	^ self activeWorkingCopy menu: aMenu forRef: self activeRef