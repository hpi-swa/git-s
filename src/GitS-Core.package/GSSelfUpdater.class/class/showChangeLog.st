change-log
showChangeLog
	| log notShown |
	self wantsChangeLog ifFalse: [^ self].
	log := self changeLog.
	notShown := log allButFirst: self shownChangeLogLength.
	notShown ifEmpty: [^ self].
	self
		inform: (self shortShowChangeLogMessageFor: notShown);
		shownChangeLogLength: log size.