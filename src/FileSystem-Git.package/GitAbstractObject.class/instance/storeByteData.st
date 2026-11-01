accessing
storeByteData
	^ GitStream streamContents: [:stream | self storeByteDataOn: stream]