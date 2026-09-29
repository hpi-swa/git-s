changes-operations
batchMaterialize: aCollection in: aWorkingCopy
	GSImageCommitCache batchCreationsDuring:
		[(MCPatch operations: (aCollection gather: #operations))
			gitSApplyToLoadedWithNameLike: 'Code'].