processing
processRemaining
	self remaining do: [:each | self processRemaining: each].