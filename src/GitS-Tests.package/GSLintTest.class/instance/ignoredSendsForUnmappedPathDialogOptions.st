ignored-sends
ignoredSendsForUnmappedPathDialogOptions
	^ {
		GSBaseWorkingCopy>>#requestOptionForUnmappedPath:mapper:additionalOptions:.
		GSBaseWorkingCopy>>#getUnmappedPathFrom:withTitle:additionalOptions:optionIfMapped:.
		GSAssetBrowser>>#importDirectory:.
	} gather: [:compiledMethod | #(different overwrite skip ask) collect: [:symbol | compiledMethod -> symbol]]