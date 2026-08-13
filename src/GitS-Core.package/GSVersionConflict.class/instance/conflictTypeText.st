toolbuilder
conflictTypeText
	self assert: {self current. self incoming. self base} asSet size > 1.
	self base gitSIsMissing ifTrue: [^ 'both added'].
	self current gitSIsMissing ifTrue: [^ 'current deleted, incoming modified'].
	self incoming gitSIsMissing ifTrue: [^ 'current modified, incoming deleted'].
	^ 'both modified'