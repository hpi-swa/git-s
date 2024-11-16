git porcelain - external
commandExists: aString
	| command pathDelimiter locations shellSyntax |
	command := aString copyUpTo: Character space.
	pathDelimiter := self osProcess isWindows ifTrue: [';'] ifFalse: [':'].
	locations := (self osProcess thisOSProcess path splitBy: pathDelimiter)
		collect: [:each | (FileSystem disk referenceTo: each) / command].
	self osProcess isWindows ifTrue: [
		locations := locations gather: [:each | {each. each withExtension: 'exe'}]].
	shellSyntax := (self osProcessClass: #ShellSyntax) new.
	^ locations anySatisfy: [:each |
		each exists and: [shellSyntax isExecutable: each printString]]