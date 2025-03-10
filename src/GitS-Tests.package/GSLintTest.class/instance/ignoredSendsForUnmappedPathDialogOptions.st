ignored-sends
ignoredSendsForUnmappedPathDialogOptions
	^ {
		GSBaseWorkingCopy>>#requestOptionForUnmappedPath:mapper:additionalOptions:.
		GSBaseWorkingCopy>>#getUnmappedPathFrom:withTitle:additionalOptions:optionIfMapped:.
		GSAssetBrowser>>#importDirectory:.
		GSAssetBrowser>>#requestBasePathToImportDirectory:initialAnswer:setOptionIfMapped:.
	} gather: [:compiledMethod | #(different overwrite skip ask) collect: [:symbol | compiledMethod -> symbol]]