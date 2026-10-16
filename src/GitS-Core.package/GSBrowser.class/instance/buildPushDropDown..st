toolbuilder
buildPushDropDown: builder
	^ GSGUIUtilities
		buildDropDown: [:spec |
			spec
				model: self operationStarter;
				action: #actionPushDropDown;
				help: 'Actions related to pushing';
				yourself]
		with: builder