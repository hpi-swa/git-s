listing
commitsForRef: aString
	| head |
	head := self unitOfWork objectReferenced: aString.
	self includeReflogs ifFalse: [^ {head}].
	^ ((((self reflogFor: aString) entries
		gather: [:each | {each previousHexHash. each nextHexHash}])
		as: Set)
		collect: [:each | self unitOfWork objectNamed: each])
		add: head;
		yourself