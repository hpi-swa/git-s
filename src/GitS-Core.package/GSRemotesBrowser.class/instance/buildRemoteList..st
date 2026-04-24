toolbuilder
buildRemoteList: builder
	^ builder pluggableListSpec new
		model: self operationStarter;
		list: #remoteList;
		getSelected: #selectedRemoteName;
		setSelected: #selectedRemoteName:;
		yourself