actions-private
refresh
	self okToRefresh ifFalse: [^ self].
	self changes: self changesBlock value.