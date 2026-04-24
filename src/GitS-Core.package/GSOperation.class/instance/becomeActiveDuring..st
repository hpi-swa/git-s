activating
becomeActiveDuring: aBlock
	self workingCopy ifNil: [^ self class value: self during: aBlock].
	^ self workingCopy activeOperation: self during: aBlock