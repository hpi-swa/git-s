storing
byteDataOn: aStream
	entries values sorted do: [ :entry | 
		entry byteDataOn: aStream ]