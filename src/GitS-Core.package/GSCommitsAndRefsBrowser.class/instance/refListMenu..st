menu
refListMenu: aMenu
	self workingCopyOrNil ifNil: [^ aMenu].
	self activeRefTreeMember ifNil: [^ aMenu].
	self activeRefTreeMember ref = self activeRef ifFalse: [^ aMenu].
	^ self workingCopy menu: aMenu forRef: self activeRef