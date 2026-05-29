accessing
labelWithKeyStroke
	self keyStroke ifNil: [^ self label].
	^ '{1} ({2})' format: {self label. self keyStroke}