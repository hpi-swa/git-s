toolbuilder
buildCommitList: builder
	^ builder pluggableTreeSpec new
		model: self operationLifecycle;
		roots: #commitList;
		nodeClass: GSCommitWrapper;
		getSelected: #activeCommit;
		setSelected: #activeCommit:;
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max].
			nil.
		};
		menu: #commitListMenu:;
		yourself