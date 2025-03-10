accessing
selectedMapperOrCancel
	^ self selectedMapper ifNil: [
		GSGUIUtilities informAndCancel: 'Please select an asset first.']