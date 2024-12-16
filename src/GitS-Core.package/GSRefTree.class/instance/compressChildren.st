compressing
compressChildren
	self compressChildrenUnsorted.
	self children sort: #label ascending.