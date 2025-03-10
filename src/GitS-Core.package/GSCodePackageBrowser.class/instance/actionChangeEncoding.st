actions
actionChangeEncoding
	| mapper |
	mapper := self selectedMapper.
	self workingCopy replaceMapper: mapper with: mapper changeEncoding.