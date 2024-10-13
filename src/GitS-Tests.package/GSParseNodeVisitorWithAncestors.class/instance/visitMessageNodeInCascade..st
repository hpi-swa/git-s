visiting
visitMessageNodeInCascade: aMessageNode
	"receiver is nil for cascades"
	self
		visit: aMessageNode selector;
		visitAll: aMessageNode argumentsInEvaluationOrder.