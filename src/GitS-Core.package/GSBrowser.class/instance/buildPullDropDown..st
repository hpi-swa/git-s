toolbuilder
buildPullDropDown: builder
	^ GSGUIUtilities
		buildDropDown: [:spec |
			spec
				model: self operationStarter;
				action: #actionPullDropDown;
				help: 'Actions related to pulling';
				yourself]
		with: builder