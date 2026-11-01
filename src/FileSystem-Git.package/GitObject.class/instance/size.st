public-testing
size
	| stream |
	loadedSize ifNotNil: [^ loadedSize].
	stream := GitStream new.
	self byteDataOn: stream.
	^ stream size