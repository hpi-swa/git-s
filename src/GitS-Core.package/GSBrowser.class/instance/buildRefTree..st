toolbuilder
buildRefTree: builder
	^ builder pluggableTreeSpec new
		model: self operationLifecycle;
		roots: #refTreeRoots;
		getSelected: #activeRefTreeMember;
		setSelected: #activeRefTreeMember:;
		nodeClass: GSRefTreeMemberWrapper;
		menu: #refListMenu:;
		yourself