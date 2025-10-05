*GitS-Core-Code
gitSBrowse
	| reference |
	self actualClass ifNil: [^ self inform: 'This method''s class does not exist in the image'].
	reference := self asMethodReference.
	reference isValid ifFalse: [
		(self confirm: 'This method does not exist in the image. Do you want to browse its class instead?') ifFalse: [^ self]].
	reference browse.