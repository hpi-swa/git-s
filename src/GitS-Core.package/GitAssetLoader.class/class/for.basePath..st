instance creation
for: aString basePath: aStringOrPath
	<linterIgnoreUnsent> "public API"
	^ (self for: aString)
		basePath: aStringOrPath;
		yourself