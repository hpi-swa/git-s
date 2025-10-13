bindings
addBindings
	self getBindings keysAndValuesDo: [:name :value |
		self bindings at: name asString put: value copy].