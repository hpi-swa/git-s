generating
addError: aStringOrText onClick: aBlock
	self addDeduplicatedError:
		(GSTextUtilities
			onClick: aStringOrText
			do: [self operationStarter ensureActiveOperationDuring: aBlock]).