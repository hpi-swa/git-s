git porcelain
handleConnectionClosed: aConnectionClosed while: aString ifRetry: aBlock
	(self requestToEnableExternalFetchAndPushBecause:
		('{1} failed with the internal git implementation.'
			format: {aString capitalized}))
		ifFalse: [aConnectionClosed pass]
		ifTrue: [aBlock value].