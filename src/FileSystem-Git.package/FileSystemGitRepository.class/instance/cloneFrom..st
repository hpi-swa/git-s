git porcelain
cloneFrom: aStringOrUrl
	(self shouldHandleUrlExternally: aStringOrUrl)
		ifTrue: [self cloneExternalFrom: aStringOrUrl]
		ifFalse: [[self cloneInternalFrom: aStringOrUrl]
					on: ConnectionClosed
					do: [:exception |
						self
							handleConnectionClosed: exception
							while: 'cloning'
							ifRetry: [self cloneFrom: aStringOrUrl]]].