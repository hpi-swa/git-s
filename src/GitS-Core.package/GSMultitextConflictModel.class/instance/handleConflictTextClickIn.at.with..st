click-handling
handleConflictTextClickIn: aParagraph at: aPoint with: aTextEditor
	| source conflictAssoc conflictInterval resolution editor paragraphLineIndex textCharacterIndex |
	self ensureInEditMode.
	paragraphLineIndex := aParagraph lineIndexForPoint: aPoint.
	textCharacterIndex := (aParagraph lines at: paragraphLineIndex) first.
	source := aParagraph text asString.
	conflictAssoc := self conflictIntervalAndResolutionSurrounding: textCharacterIndex in: source.
	conflictAssoc ifNil: [^ self inform: 'no appropriate conflict markers found'].
	conflictInterval := conflictAssoc key.
	resolution := conflictAssoc value asText.
	editor := aTextEditor morph editor. "entering edit mode can create a new editor"
	self preserveUndoWhileReplacing: conflictInterval with: resolution in: editor.