testing
hasPathFrom: startNode to: targetNode
	^ paths at: targetNode
		ifPresent: [:dictionary | dictionary includesKey: startNode]
		ifAbsent: [^ false]