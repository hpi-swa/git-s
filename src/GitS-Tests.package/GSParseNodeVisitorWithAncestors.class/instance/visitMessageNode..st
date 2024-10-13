visiting
visitMessageNode: aMessageNode
	self
		visit: aMessageNode receiver;
		visit: aMessageNode selector;
		visitAll: aMessageNode argumentsInEvaluationOrder.