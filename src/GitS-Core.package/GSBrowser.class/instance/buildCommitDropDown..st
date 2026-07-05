toolbuilder
buildCommitDropDown: builder
	^ (GSGUIUtilities buildDropDownWith: builder)
		model: self operationStarter;
		action: #actionCommitDropDown;
		help: 'Actions related to committing';
		yourself