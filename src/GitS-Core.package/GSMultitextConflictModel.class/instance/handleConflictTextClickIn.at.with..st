click-handling
handleConflictTextClickIn: aParagraph at: aPoint with: aTextEditor
	| lineIndex source conflictAssoc conflictInterval resolution editor |
	self ensureInEditMode.
	lineIndex := aParagraph lineIndexForPoint: aPoint.
	source := aParagraph text asString.
	conflictAssoc := self conflictIntervalAndResolutionSurrounding: lineIndex in: source.
	conflictAssoc ifNil: [^ self inform: 'no appropriate conflict markers found'].
	conflictInterval := conflictAssoc key.
	resolution := conflictAssoc value asText.
	editor := aTextEditor morph editor. "entering edit mode can create a new editor"
	self preserveUndoWhileReplacing: conflictInterval with: resolution in: editor.