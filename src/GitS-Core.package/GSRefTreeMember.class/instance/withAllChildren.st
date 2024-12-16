accessing
withAllChildren
	^ {self}, (self children gather: #withAllChildren)