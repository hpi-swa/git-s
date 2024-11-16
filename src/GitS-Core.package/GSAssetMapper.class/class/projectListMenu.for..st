menu
projectListMenu: aMenu for: aWorkingCopy
	aWorkingCopy ifNil: [^ self].
	aMenu
		add: 'Manage its assets'
		target: GSAssetBrowser
		selector: #openOnWorkingCopy:
		argument: aWorkingCopy.