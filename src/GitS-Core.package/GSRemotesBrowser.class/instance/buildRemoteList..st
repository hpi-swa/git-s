toolbuilder
buildRemoteList: builder
	^ builder pluggableListSpec new
		model: self operationLifecycle;
		list: #remoteList;
		getSelected: #selectedRemoteName;
		setSelected: #selectedRemoteName:;
		yourself