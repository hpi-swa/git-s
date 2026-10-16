actions-private
addActionButton
	self actionBlock ifNil: [^ self].
	self dialog
		addButton: [:builder |
			self	
				buildButton: self actionLabel
				action: #checkedAction
				color: #actionColor
				with: builder]
		at: #bottom.