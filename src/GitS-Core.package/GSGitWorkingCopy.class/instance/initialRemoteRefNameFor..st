upstream
initialRemoteRefNameFor: aString
	(self isBranch: aString) ifTrue: [^ self branchBasename: aString].
	(self isImageRef: aString) ifTrue: [^ self imageRefBasename: aString].
	^ aString