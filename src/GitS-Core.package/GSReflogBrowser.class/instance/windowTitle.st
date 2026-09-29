ui
windowTitle
	^ 'Reflog of {1}' format: {(GitReference shortName: self ref) printString}