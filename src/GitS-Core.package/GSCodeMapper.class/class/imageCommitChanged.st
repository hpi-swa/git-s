updating
imageCommitChanged
	(self allSubInstances gather: #dependents) asSet do: [:each | each update: #imageCommit].