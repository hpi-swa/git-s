actions
actionRemove
	GSGUIUtilities confirmOrCancel:
		('Do you really want to remove the project {1}?
		The files on disk and the code in the image will remain, but the project will be no longer be visible here.'
			gitSFormat: {self name printString}).
	self unregister.