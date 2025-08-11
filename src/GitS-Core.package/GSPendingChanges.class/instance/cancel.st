actions-private
cancel
	self cancelBlock ifNotNil: #value.
	self closeDialog.
	self promise fulfillWith: [GSGUIUtilities cancel].