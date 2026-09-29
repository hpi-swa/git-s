toolbuilder
toggleTrackedLabel
	^ 'Mark asset {1}'
		format: {(self selectedMapper ifNil: [false] ifNotNil: #isTracked)
					ifTrue: ['inferred'] ifFalse: ['tracked']}