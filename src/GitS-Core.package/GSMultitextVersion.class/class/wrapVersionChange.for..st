wrapping
wrapVersionChange: aVersionChange for: aChange
	^ aVersionChange collect: [:each | self wrapVersion: each for: aChange]