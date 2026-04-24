activating
ignoreCancelationDuring: aBlock
	^ aBlock on: GSOperationCanceledError do: [nil]