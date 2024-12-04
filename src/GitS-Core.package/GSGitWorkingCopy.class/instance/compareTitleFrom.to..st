dialog
compareTitleFrom: anObject to: anotherObject
	^ 'Show changes from {1} to {2}' format: {self displayName: anObject. self displayName: anotherObject}