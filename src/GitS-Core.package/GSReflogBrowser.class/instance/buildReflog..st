toolbuilder
buildReflog: builder
	^ builder pluggableMultiColumnListSpec new
		model: self operationStarter;
		list: #entryColumns;
		getIndex: #activeEntryIndex;
		setIndex: #activeEntryIndex:;
		columnResizings: #(shrinkWrap shrinkWrap spaceFill);
		itemPaddings: ((1 to: 3) collect: [:each | 5 px @ 0]);
		menu: #menu:;
		yourself