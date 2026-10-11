credentials
passwordPromptFor: anUrl
	anUrl authority = 'github.com' ifTrue: [^ self tokenPromptForGitHub: anUrl].
	(anUrl authority includesSubstring: 'gitlab') ifTrue: [^ self tokenPromptForGitLab: anUrl].
	^ 'Password for {1}:' format: {anUrl}