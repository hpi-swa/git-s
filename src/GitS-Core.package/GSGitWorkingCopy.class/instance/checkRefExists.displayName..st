refs
checkRefExists: refName displayName: displayName
	(self unitOfWork refExists: refName) ifFalse: [^ self].
	GSGUIUtilities confirmOrCancel:
		('{1} already exists. Do you want to overwrite it?'
			format: {displayName printString}).