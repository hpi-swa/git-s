toolbuilder
buildCommands: builder
	^ builder pluggableTreeSpec new
		model: self operationStarter;
		roots: #commandsWithHeader;
		nodeClass: GSRebaseCommandWrapper;
		getSelected: #activeCommand;
		setSelected: #activeCommand:;
		dragItem: #dragItem:;
		dropAccept: #wantsDropItem:;
		dropItem: #dropItem:on:;
		menu: #commandMenu:;
		columns: {
			[:listMorph | ((listMorph filteredItems
							reject: [:item | item complexContents command isHeader])
							collect: [:item | item preferredWidthOfColumn: 1])
							max].
			nil
		};
		yourself