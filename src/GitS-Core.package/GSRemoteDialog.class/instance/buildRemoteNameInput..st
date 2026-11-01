toolbuilder
buildRemoteNameInput: builder
	^ builder pluggableInputFieldSpec new
		model: self;
		getText: #remoteName;
		editText: #remoteName:;
		setText: #remoteNameAndAccept:;
		indicateUnacceptedChanges: false;
		help: 'name';
		yourself