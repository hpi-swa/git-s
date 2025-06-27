updating
okToClose
	^ self wasEdited not
		or: [self confirm: 'You have made edits to some changes. Is it ok to discard them?']