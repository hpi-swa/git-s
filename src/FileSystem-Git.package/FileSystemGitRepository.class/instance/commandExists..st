git porcelain - external
commandExists: aString
	^ ((self osProcessClass: #ShellSyntax) new
		findExecutablePathFor: (aString copyUpTo: Character space)
		inDirectoryPath: nil) notNil