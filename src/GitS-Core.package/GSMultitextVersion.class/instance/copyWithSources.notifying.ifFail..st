editing
copyWithSources: aCollection notifying: requestors ifFail: aBlock
	^ self class
		wrapVersion: (self versionCopyWithSources: aCollection notifying: requestors ifFail: aBlock)
		for: self change