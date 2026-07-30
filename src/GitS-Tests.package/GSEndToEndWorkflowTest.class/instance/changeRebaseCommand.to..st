rebase
changeRebaseCommand: commandObject to: typeString
	self
		rightClick: (self findInRebaseWindow: commandObject);
		moveTo: 'Change type to';
		leftClick: typeString.