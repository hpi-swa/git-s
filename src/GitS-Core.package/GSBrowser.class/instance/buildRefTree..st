toolbuilder
buildRefTree: builder
	^ builder pluggableTreeSpec new
		model: self operationStarter;
		roots: #refTreeRoots;
		getSelected: #activeRefTreeMember;
		setSelected: #activeRefTreeMember:;
		nodeClass: GSRefTreeMemberWrapper;
		menu: #refListMenu:;
		yourself