ui
revealSelectedChange
	<linterIgnoreSends: #(openPath)>
	self selectedChange ifNotNil: [:change |
		self changed: #(openPath), (self nodePath: change)].
	self changed: #selectedChange.