finalization
checkAllFinalized
	self commitWrappers slowSize = 0 ifFalse: [^ self].
	self unregister.
	self delay signalWaitingProcess.