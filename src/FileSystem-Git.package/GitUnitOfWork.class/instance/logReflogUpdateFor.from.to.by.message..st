refs-private
logReflogUpdateFor: ref from: previousHexHash to: nextHexHash by: stamp message: aString
	| reflog |
	reflog := self reflogForReference: ref.
	reflog
		logUpdateFrom: previousHexHash
		to: nextHexHash
		by: stamp
		message: aString.
	self repository changed: reflog.