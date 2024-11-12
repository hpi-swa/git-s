instance creation
withMapper: aMapper from: aSnapshot patch: anMCPatch
	^ self
		withMapper: aMapper
		from: aSnapshot
		operations: anMCPatch operations