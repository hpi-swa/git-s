menu
projectListMenu: aMenu
	self activeWorkingCopy ifNotNil: [:workingCopy |
		aMenu
			target: workingCopy;
			title: ('Project {1}' format: {workingCopy name printString});
			add: 'Organize it'
			subMenu: (MenuMorph new in: [:subMenu |
				subMenu
					target: workingCopy;
					add: 'Rename it' action: #actionRename;
					add: 'Remove it' action: #actionRemove;
					add: 'Choose new repository location' action: #actionChooseNewRepositoryLocation;
					yourself]).
		self addMappersProjectListMenu: aMenu.
		aMenu add: 'Export it to a .sar' action: #actionExportToSar].
	aMenu
		target: self;
		addLine;
		add: 'New project'
		subMenu: (MenuMorph new in: [:subMenu |
			subMenu
				target: self;
				add: 'Clone' action: #actionCloneProject;
				add: 'From disk' action: #actionNewProject;
				yourself]).
	^ aMenu