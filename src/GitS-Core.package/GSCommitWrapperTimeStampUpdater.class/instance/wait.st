waiting
wait
	self delay: ((self timeStamp - TimeStamp now) clampLow: 0 seconds) asDelay.
	self delay wait.
	self unregister.
	Project current addDeferredUIMessage: [self commitWrappers do: #updateString].