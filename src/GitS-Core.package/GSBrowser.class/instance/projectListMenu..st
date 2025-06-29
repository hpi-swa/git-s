menu
projectListMenu: aMenu
	self activeWorkingCopy ifNotNil: [:workingCopy | | target |
		target := workingCopy operationLifecycle.
		aMenu
			target: target;
			title: ('Project {1}' format: {workingCopy name printString});
			add: 'Organize it'
			subMenu: (MenuMorph new in: [:subMenu |
				subMenu
					target: target;
					add: 'Rename it' action: #actionRename;
					add: 'Remove it' action: #actionRemove;
					add: 'Choose new repository location' action: #actionChooseNewRepositoryLocation;
					yourself]).
		self addMappersProjectListMenu: aMenu.
		aMenu add: 'Export it to a .sar' action: #actionExportToSar].
	aMenu
		addLine;
		add: 'Add project'
		subMenu: (MenuMorph new in: [:subMenu |
			subMenu
				target: self operationLifecycle;
				add: 'Clone' action: #actionCloneProject;
				add: 'New on disk' action: #actionNewProject;
				add: 'Existing from disk' action: #actionNewExistingProject;
				yourself]).
	^ aMenu