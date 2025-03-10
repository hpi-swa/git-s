actions
actionRemove
	GSGUIUtilities confirmOrCancel:
		('Do you really want to remove the project {1}?
		The files on disk will remain, but the project will be no longer be visible here.'
			withoutLineEndings withBlanksCondensed
			format: {self name printString}).
	self unregister.