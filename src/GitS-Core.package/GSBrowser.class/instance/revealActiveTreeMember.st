ui
revealActiveTreeMember
	self activeRefTreeMember ifNil: [^ self].
	self changed: {#openPath}, (self activeRefTreeMember withAllParents allButFirst collect: #label).