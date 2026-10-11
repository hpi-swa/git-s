running
handlePromiseCommandResult: aPromise
	aPromise
		then: [:result | self handleDelayedCommandResult: result]
		ifRejected: [:error | self onPause].