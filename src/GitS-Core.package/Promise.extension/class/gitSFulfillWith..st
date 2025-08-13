*GitS-Core
gitSFulfillWith: aBlock
	| p |
	p := self new.
	[p resolveWith: aBlock value] on: Error do: [:error | p rejectWith: error].
	^ p