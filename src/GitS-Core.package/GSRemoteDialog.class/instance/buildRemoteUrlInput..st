toolbuilder
buildRemoteUrlInput: builder
	^ builder pluggableInputFieldSpec new
		model: self;
		getText: #remoteUrl;
		editText: #remoteUrl:;
		setText: #remoteUrlAndAccept:;
		indicateUnacceptedChanges: false;
		help: 'URL';
		yourself