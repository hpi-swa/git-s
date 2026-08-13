api
consumeAll
	^ self mutex critical: [ | result |
		result := self buffer.
		self buffer: self buffer class new.
		result]