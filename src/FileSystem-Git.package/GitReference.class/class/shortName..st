name
shortName: aString
	"Answers the more colloquial branch name without refs/squeak, refs/heads or refs/remotes/."
	| result |
	result := aString.
	(result beginsWith: 'refs/squeak/')
		ifTrue: [result := (result allButFirst: 'refs/squeak/' size) copyAfter: $/].
	(result beginsWith: 'heads/')
		ifTrue: [^ result allButFirst: 'heads/' size].
	(result beginsWith: 'refs/heads/')
		ifTrue: [^ result allButFirst: 'refs/heads/' size].
	(result beginsWith: 'refs/remotes/')
		ifTrue: [^ result allButFirst: 'refs/remotes/' size].
	^ result