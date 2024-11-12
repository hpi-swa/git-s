git porcelain
fetchFrom: aRemoteName
	GitFeatureFlags externalFetchAndPush
		ifTrue: [self fetchAllExternalFrom: aRemoteName]
		ifFalse: [[self fetchInternalFrom: aRemoteName]
					on: ConnectionClosed
					do: [:exception |
						self
							handleConnectionClosed: exception
							while: 'fetching'
							ifRetry: [self fetchFrom: aRemoteName]]].