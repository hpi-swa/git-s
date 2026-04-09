instance creation
for: aTimeStamp
	^ self registry at: aTimeStamp ifAbsentPut: [
		self new
			timeStamp: aTimeStamp;
			forkWait;
			yourself]