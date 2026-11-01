validation
checkValidRemoteName
	[GitReference validateReferenceName: self remoteName]
		on: GitInvalidReferenceName
		do: [:error | self inform: 'Invalid remote name: ', error messageText. ^ false].
	^ true