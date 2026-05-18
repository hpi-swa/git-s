serializing
serializeInto: aFileSystem at: aPath
	(aFileSystem respondsTo: #writeBlob:at:) ifFalse: [^ self load serializeInto: aFileSystem at: aPath].
	aFileSystem writeBlob: self hexHash at: aPath.