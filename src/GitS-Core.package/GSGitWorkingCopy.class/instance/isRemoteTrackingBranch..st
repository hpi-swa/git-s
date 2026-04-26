remotes
isRemoteTrackingBranch: aString
	^ (aString beginsWith: self remoteRefDirectory)
		and: [(aString occurrencesOf: $/) >= ((self remoteRefDirectory occurrencesOf: $/) + 1)]