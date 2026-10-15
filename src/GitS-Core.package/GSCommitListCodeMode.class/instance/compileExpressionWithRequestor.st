compiling
compileExpressionWithRequestor
	| morph |
	"editText: does not provide a requestor, so we need to find it manually"
	morph := self findExpressionMorph.
	self compileExpressionNotifying: (morph ifNotNil: [morph textMorph editor]).
	"correctFrom:to:with: does not trigger editText:, so trigger it manually"
	morph ifNotNil: [self commitList expression: morph textMorph contents].