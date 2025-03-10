actions-private
cancel
	self closeDialog.
	self promise fulfillWith: [GSGUIUtilities cancel].