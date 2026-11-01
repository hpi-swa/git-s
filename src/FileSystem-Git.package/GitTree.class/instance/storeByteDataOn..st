storing
storeByteDataOn: aStream
	entries values sorted do: [ :entry | 
		entry storeByteDataOn: aStream ]