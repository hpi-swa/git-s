change-log
buildChangeLogWindowForText: aText with: builder
	^ builder pluggableWindowSpec new
		model: Model new;
		children: {GSGUIUtilities windowChild: (self buildChangeLogText: aText with: builder)};
		label: 'Change log for git/s';
		yourself