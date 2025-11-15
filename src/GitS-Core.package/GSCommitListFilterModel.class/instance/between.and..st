public - time
between: afterTimeStamp and: beforeTimeStamp
	afterTimeStamp <= beforeTimeStamp ifFalse: [
		^ self between: beforeTimeStamp and: afterTimeStamp].
	^ self timeStamp between: afterTimeStamp and: beforeTimeStamp