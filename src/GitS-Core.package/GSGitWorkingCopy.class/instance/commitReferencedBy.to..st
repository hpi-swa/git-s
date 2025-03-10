refs
commitReferencedBy: aString to: anotherString
	| object |
	object := self unitOfWork objectReferenced: aString.
	(object isKindOf: GitCommit) ifTrue: [^ object].
	GSGUIUtilities informAndCancel:
		('Cannot {1} at {2}, because it does not refer to a commit'
			format: {anotherString. aString printString}).