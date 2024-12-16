compressing
compressChildrenUnsorted
	self children:
		(self children
			collect: [:each | each compress]
			thenSelect: #notNil).