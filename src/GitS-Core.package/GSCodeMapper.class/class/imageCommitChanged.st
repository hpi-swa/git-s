updating
imageCommitChanged
	(self cachedAllSubInstances gather: #dependents) asSet do: [:each | each update: #imageCommit].