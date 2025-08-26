changes-creation
hexHashesFrom: aString to: anotherString ifEqual: aBlock
	aString = anotherString ifFalse: [^ self].
	aBlock value: (GSEmptyChangeSet withMapper: self).