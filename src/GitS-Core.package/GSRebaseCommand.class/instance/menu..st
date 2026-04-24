menu
menu: aMenu
	aMenu
		defaultTarget: self operationStarter;
		add: 'Change type to' subMenu: (MenuMorph new in: [:menu |
			menu defaultTarget: self operationStarter.
			(self class compatibleCommandClasses sorted: #commandName ascending) do: [:each |
				menu
					add: each commandName
					selector: #actionChangeCommandTo:
					argument: each].
			menu]);
		add: 'Delete' action: #actionDelete.