actions-private
refresh
	self okToRefresh ifFalse: [^ self].
	self changeSets: self changeSetsBlock value.