refs
duplicateRef: oldRefPath to: newRefPath deleteOld: deleteBoolean silently: silentBoolean
	"Copy or move the (possibly symbolic) reference denoted by oldRefPath and its reflog."
	| expandedOldRef signature hexHash oldReflogFile |
	expandedOldRef := self expandRef: oldRefPath.
	expandedOldRef ifNil: ["does not exist" ^ self]..
	signature := (self ref: expandedOldRef) signature.
	self basicUpdateRef: newRefPath to: signature silently: silentBoolean.
	oldReflogFile := repository reflogFileForReference: expandedOldRef.
	oldReflogFile exists ifTrue: [| newReflogFile |
		newReflogFile := repository reflogFileForReference: newRefPath.
		newReflogFile parent ensureCreateDirectory.
		newReflogFile ensureDeleted.
		oldReflogFile
			perform: (deleteBoolean ifTrue: [#moveTo:] ifFalse: [#copyTo:])
			with: newReflogFile].
	hexHash := self resolveRef: oldRefPath.
	(self reflogForReference: newRefPath)
		logUpdateFrom: hexHash
		to: hexHash
		by: GitStamp now
		message: ('{1} {2} to {3}' format: {
			deleteBoolean ifTrue: ['moved'] ifFalse: ['copied'].
			expandedOldRef.
			newRefPath}).
	deleteBoolean ifTrue: [self deleteRef: expandedOldRef].