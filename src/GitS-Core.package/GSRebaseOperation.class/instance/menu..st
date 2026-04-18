menu
menu: aMenu
	aMenu
		defaultTarget: self operationLifecycle;
		add: 'Change type to' subMenu: (MenuMorph new in: [:menu |
			menu defaultTarget: self operationLifecycle.
			(self class compatibleOperationClasses sorted: #operationName ascending) do: [:each |
				menu
					add: each operationName
					selector: #actionChangeOperationTo:
					argument: each].
			menu]);
		add: 'Delete' action: #actionDelete.