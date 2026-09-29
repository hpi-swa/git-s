credentials
offerToReuseCredentials: aCollection detailed: aBoolean ifNone: aBlock
	<linterIgnoreSends: #(new moreDetails)>
	| values chosen |
	values := #(new), (aCollection keys sorted: #first ascending).
	aBoolean ifFalse: [values := values copyWith: #moreDetails].
	chosen := GSGUIUtilities
				title: 'Do you want to reuse credentials?'
				chooseFromValues: values
				label: [:credentials |
					credentials caseOf: {
						[#new] -> ['No, enter new credentials'].
						[#moreDetails] -> ['Show more details'].
					} otherwise: [self
									formatReusableCredentials: credentials
									usedIn: (aCollection at: credentials)
									detailed: aBoolean]].
	^ chosen caseOf: {
		[#new] -> [aBlock value].
		[#moreDetails] -> [self offerToReuseCredentials: aCollection detailed: true ifNone: aBlock].
	} otherwise: [chosen]