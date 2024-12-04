actions
actionRemove
	(self confirm:
		('Do you really want to remove the project {1}? ',
		'The files on disk will remain, but the project will be no longer be visible here.'
			format: {self name printString}))
		ifFalse: [^ self].
	self unregister.