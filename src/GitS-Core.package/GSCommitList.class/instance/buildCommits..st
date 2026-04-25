toolbuilder
buildCommits: builder
	^ builder pluggableMultiColumnListSpec new
		model: self operationLifecycle;
		list: #commitColumns;
		icon: #commitIconAtRow:column:;
		getIndex: #activeCommitIndex;
		setIndex: #activeCommitIndex:;
		columnResizings: #(shrinkWrap shrinkWrap spaceFill);
		itemPaddings: {5 px @ 0. 0 @ 0. 0 @ 0};
		menu: #commitsMenu:;
		helpItem: #balloonTextForCommitAt:;
		yourself