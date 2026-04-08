ui
aboutToStyle: aStyler requestor: requestor at: aNumber
	^ self isInEditMode and:
		[(self someSourceAt: aNumber) aboutToStyle: aStyler requestor: requestor]