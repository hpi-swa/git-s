rebase
changeRebaseCommand: commitLabel to: typeName
	self
		rightClick: (self findInRebaseWindow: commitLabel);
		moveTo: 'Change type to';
		leftClick: typeName.