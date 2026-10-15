editor
wantsToCloseAutocompletion
	<linterIgnoreUnsent> "called by autocompletion implementations"
	"copied from Model, replacing dependents with actualDependents"
	"We want to close the Autocompletion whenever all Morphs for this model have disappeared"
	^ ((self actualDependents select: #isMorph)
		select: #isInWorld) isEmpty