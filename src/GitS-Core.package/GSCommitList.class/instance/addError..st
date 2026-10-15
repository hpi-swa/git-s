accessing
addError: aStringOrText
	self errors add: aStringOrText.
	self changed: #statusText.