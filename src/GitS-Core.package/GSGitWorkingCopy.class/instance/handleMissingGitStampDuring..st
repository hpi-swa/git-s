git-operations
handleMissingGitStampDuring: aBlock
	^ aBlock
		on: GitStampNameRequest do: [:request | request resume: 'git/s system']
		on: GitStampEmailRequest do: [:request | request resume: 'gits@generated.invalid']