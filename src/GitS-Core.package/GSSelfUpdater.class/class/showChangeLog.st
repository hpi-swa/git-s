change-log
showChangeLog
	| log notShown |
	log := self changeLog.
	notShown := log allButFirst: self shownChangeLogLength.
	notShown ifEmpty: [^ self].
	self
		inform: (String streamContents: [:stream |
			stream
				nextPutAll: 'Change log since your last update of git-s:';
				cr.
			notShown do: [:each |
				stream
					nextPutAll: '* ';
					nextPutAll: each;
					cr]]);
		shownChangeLogLength: log size.