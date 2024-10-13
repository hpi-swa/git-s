visiting
visitCascadeNode: aCascadeNode
	self visit: aCascadeNode receiver.
	aCascadeNode messages do: [:message|
		self
			pushAncestor: message
			during: [self visitMessageNodeInCascade: message]].