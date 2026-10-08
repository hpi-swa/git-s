instance creation
readFrom: aStream
	^ self new
			repository: GitRepository memory;
			readStream: aStream;
			readHeaders;
			yourself