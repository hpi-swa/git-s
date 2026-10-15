change-log
changeLogTypeSectionTextFor: aCollection
	^ Text streamContents: [:stream | | byScope |
		stream withAttribute: TextEmphasis underlined do: [
			stream nextPutAll: (self typeLabels at: aCollection anyOne type)].
		byScope := (aCollection groupBy: #scope) withKeysSorted: #yourself ascending undefinedLast.
		byScope keysAndValuesDo: [:scope :items |
				stream cr.
				(scope notNil or: [byScope size > 1]) ifTrue: [
					stream cr; withAttribute: TextEmphasis italic do: [
						stream nextPutAll: (scope ifNil: ['other'])]].
				items do: [:each |
					stream
						cr;
						nextPutAll: '* ';
						nextPutAll: each descriptionText]]]