ui
errorsStatusText
	self errors ifEmpty: [^ nil].
	^ GSTextUtilities
		colorText: (GSTextUtilities joinTexts: self errors separatedBy: String cr)
		with: self errorColor