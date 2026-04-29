change-log
shortShowChangeLogMessageFor: aCollection
	aCollection size <= self maxShortShowChangeLogMessageSize
		ifTrue: [^ self showChangeLogMessageFor: aCollection].
	^ (self showChangeLogMessageFor: (aCollection first: self maxShortShowChangeLogMessageSize)) asText,
		String cr, '... change log truncated, ',
		(GSTextUtilities
			onClick: 'show full change log'
			do: [self inform: (self showChangeLogMessageFor: aCollection)])