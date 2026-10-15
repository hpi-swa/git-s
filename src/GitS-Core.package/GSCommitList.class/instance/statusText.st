ui
statusText
	^ GSTextUtilities
		joinTexts: self statusTextChunks
		separatedBy: String cr, String cr