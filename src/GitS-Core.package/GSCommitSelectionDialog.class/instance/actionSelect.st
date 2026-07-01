actions
actionSelect
	self activeCommit ifNil: [^ self inform: 'Please select a commit.'].
	self didSelectACommit: true.
	self close.