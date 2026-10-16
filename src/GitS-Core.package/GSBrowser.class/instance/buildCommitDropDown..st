toolbuilder
buildCommitDropDown: builder
	^ GSGUIUtilities
		buildDropDown: [:spec |
			spec
				model: self operationStarter;
				action: #actionCommitDropDown;
				help: 'Actions related to committing';
				yourself]
		with: builder