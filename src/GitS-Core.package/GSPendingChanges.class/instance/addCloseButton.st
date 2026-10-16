actions-private
addCloseButton
	self dialog
		addButton: [:builder |
			self
				buildButton: self closeLabel
				action: #closeDialog
				color: #closeColor
				with: builder]
		at: #bottom.