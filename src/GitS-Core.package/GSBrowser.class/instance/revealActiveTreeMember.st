ui
revealActiveTreeMember
	self activeRefTreeMember ifNotNil: [ | path |
		path := self activeRefTreeMember withAllParents allButFirst.
		self changed: {#openPath}, (path collect: #label)].
	self changed: #activeRefTreeMember.