actions-network
pushDropDownMenuSpec: aMenuSpec
	aMenuSpec
		add: 'Force push'
		target: self operationStarter
		selector: #actionForcePush.