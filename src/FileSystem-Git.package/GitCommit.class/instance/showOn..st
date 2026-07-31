showing
showOn: aStream
	aStream
		nextPutAll: 'Commit ';
		nextPutAll: self hexHash.
	self basicParents
		ifNotEmpty: [aStream cr; nextPutAll: 'Parents: '];
		do: [:each | aStream nextPutAll: each]
		separatedBy: [aStream nextPutAll: ', '].
	aStream cr; nextPutAll: 'Author: '.
	self author showOn: aStream.
	aStream cr; nextPutAll: 'Committer: '.
	self committer showOn: aStream.
	aStream
		cr; cr;
		nextPutAll: self message withSqueakLineEndings.