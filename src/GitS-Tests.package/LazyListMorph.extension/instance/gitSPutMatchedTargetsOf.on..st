*GitS-Tests-matching
gitSPutMatchedTargetsOf: aString on: aStream
	(1 to: self getListSize) do: [:index |
		self gitSPutMatchedTargetsOf: aString inRow: index on: aStream].