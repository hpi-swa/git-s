actions-private
addRefreshButton
	self canRefresh ifFalse: [^ self].
	self dialog
		addButton: [:builder |
			self
				buildButton: 'Refresh'
				action: #refresh
				color: nil
				with: builder]
		at: #changesTree.