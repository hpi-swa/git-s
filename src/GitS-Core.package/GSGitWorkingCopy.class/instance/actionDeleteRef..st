actions-refs
actionDeleteRef: aString
	(self checkCanDeleteRef: aString) ifFalse: [^ self].
	GSGUIUtilities confirmOrCancel:
		('Are you sure you want to delete the ref {1}?'
			format: {(GitReference shortName: aString) printString}).
	self unitOfWork deleteRef: aString.