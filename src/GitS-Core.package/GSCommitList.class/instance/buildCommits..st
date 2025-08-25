toolbuilder
buildCommits: builder
	^ builder pluggableTreeSpec new
		model: self operationLifecycle;
		roots: #commits;
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
		menu: #commitsMenu:;
		yourself