*GitS-Core-Code
gitSBrowseVersions
	| reference |
	self actualClass ifNil: [^ self inform: 'This method''s class does not exist in the image'].
	reference := self asMethodReference.
	reference isValid ifFalse: [^ self inform: 'This method does not exist in the image.'].
	ToolSet browseVersionsOf: self actualClass selector: self selector.