change-log
showChangeLogMessageFor: aCollection
	^ String streamContents: [:stream |
			stream
				nextPutAll: 'Change log since your last update of git-s:';
				cr.
			aCollection do: [:each |
				stream
					nextPutAll: '* ';
					nextPutAll: each;
					cr]]