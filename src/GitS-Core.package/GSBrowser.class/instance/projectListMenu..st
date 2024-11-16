menu
projectListMenu: aMenu
	aMenu target: self.
	self activeWorkingCopy ifNotNil: [:workingCopy |
		aMenu
			title: ('Project {1}' format: {workingCopy name printString});
			add: 'Organize it'
			subMenu: (MenuMorph new in: [:subMenu |
				subMenu
					target: self;
					add: 'Rename it' action: #actionRenameActiveProject;
					add: 'Remove it' action: #actionRemoveActiveProject;
					add: 'Choose new repository location' action: #actionChooseNewRepositoryLocationForActiveProject;
					yourself]).
		self addMappersProjectListMenu: aMenu.
		aMenu add: 'Export it to a .sar' action: #actionExportActiveProjectToSar].
	aMenu
		addLine;
		add: 'New project'
		subMenu: (MenuMorph new in: [:subMenu |
			subMenu
				target: self;
				add: 'Clone' action: #actionCloneProject;
				add: 'From disk' action: #actionNewProject;
				yourself]).
	^ aMenu