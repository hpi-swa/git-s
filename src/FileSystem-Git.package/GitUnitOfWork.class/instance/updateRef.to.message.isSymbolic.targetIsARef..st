refs
updateRef: refPath to: target message: reflogMessageString isSymbolic: isSymbolicBoolean targetIsARef: targetIsARefBoolean
	"Updates the reference denoted by refPath to reference the object with the sha1 name in hexHash and adds an entry in the reflog.
	Symbolic references are resolved, so the non-symbolic reference is updated.
	If the file denoted by refPath does not yet exist it will be created."
	| updaterAndTimestamp hexHash refValue updateReflog targetRef |
	repository validateReferenceOrReferenceName: refPath.
	updaterAndTimestamp := GitStamp now.
	hexHash := targetIsARefBoolean ifTrue: [self resolveRef: target] ifFalse: [target asHexHash].
	refValue := targetIsARefBoolean ifTrue: [self withRefPrefix: target] ifFalse: [target asHexHash].
	"also update the reflogs of all symbolic references dereferenced along the way"
	updateReflog := reflogMessageString
		ifNil: [[:ref | ]]
		ifNotNil: [ | oldHash |
			oldHash := (self resolveRef: refPath) ifNil: [0 asHexHash].
			[:ref | (self reflogForReference: ref)
						logUpdateFrom: oldHash
						to: hexHash
						by: updaterAndTimestamp
						message: reflogMessageString]].
	[targetRef := isSymbolicBoolean
		ifTrue: [updateReflog value: refPath. refPath]
		ifFalse: [self followSymbolicRefs: refPath do: updateReflog].
	self basicUpdateRef: targetRef to: refValue]
		on: Error do:
			[:e | (repository baseDir resolve: refPath) isDirectory
				ifTrue: [self error: 'Cannot create branch. ', refPath, ' is a directory']
				ifFalse: [e pass]]