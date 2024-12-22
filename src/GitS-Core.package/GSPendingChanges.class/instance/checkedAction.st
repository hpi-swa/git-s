actions-private
checkedAction
	self checkBlock value ifFalse: [^ self].
	^ self action