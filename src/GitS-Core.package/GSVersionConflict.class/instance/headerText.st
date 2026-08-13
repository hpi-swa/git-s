toolbuilder
headerText
	^ 'Conflict ({1}; {2})' asText format: {self conflictTypeText. self isResolvedText}