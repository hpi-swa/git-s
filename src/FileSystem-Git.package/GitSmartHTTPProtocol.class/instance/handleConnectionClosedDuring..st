private
handleConnectionClosedDuring: aBlock
	| attemptsLeft |
	attemptsLeft := ConnectionClosedRetryCount.
	^ aBlock on: ConnectionClosed do: [:e |
		attemptsLeft := attemptsLeft - 1.
		attemptsLeft > 0
			ifTrue: [
				500 milliSeconds wait.
				"client might contain credentials, which does not work properly,
				see WebClient>>#sendRequest:contentBlock:"
				client := nil.
				e retry]
			ifFalse: [e pass]]