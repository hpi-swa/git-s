progress
suppressProgressDuring: aBlock
	^ aBlock on: ProgressInitiationException do: #resumeSuppressingProgress