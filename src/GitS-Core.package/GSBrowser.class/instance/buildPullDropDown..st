toolbuilder
buildPullDropDown: builder
	^ (GSGUIUtilities buildDropDownWith: builder)
		model: self operationStarter;
		action: #actionPullDropDown;
		help: 'Actions related to pulling';
		yourself