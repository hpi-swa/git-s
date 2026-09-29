git porcelain - external
externalPush: aCollectionOfBranchNamesAndAssociations toRemote: remoteName delete: aCollectionOfRemoteBranchNames force: forceBoolean
	self externalGitDo: (String streamContents: [:stream |
		stream nextPutAll: 'push'.
		forceBoolean ifTrue: [stream nextPutAll: ' -f'].
		aCollectionOfBranchNamesAndAssociations do: [:branch |
			stream
				space;
				nextPutAll: branch key;
				nextPut: $:;
				nextPutAll: branch value].
		aCollectionOfRemoteBranchNames do: [:branch |
			stream
				nextPutAll: ' :';
				nextPutAll: branch]]).
	self refsChangedExternally.