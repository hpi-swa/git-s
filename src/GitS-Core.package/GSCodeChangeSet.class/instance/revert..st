operations
revert: anOperation
	(MCPatch operations: {anOperation inverse}) gitSApplyToLoaded: self package.