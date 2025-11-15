actions-private
cancel
	self cancelBlock ifNotNil: #value.
	self promise fulfillWith: [GSGUIUtilities cancel].