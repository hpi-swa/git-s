credentials
offerToReuseCredentials: aCollection detailed: aBoolean ifNone: aBlock
	| values chosen |
	values := #(new), (aCollection keys sorted: #first ascending).
	aBoolean ifFalse: [values := values copyWith: #moreDetails].
	chosen := GSGUIUtilities
				chooseFromValues: values
				label: [:credentials |
					credentials caseOf: {
						[#new] -> ['No, enter new credentials'].
						[#moreDetails] -> ['Show more details'].
					} otherwise: [self
									formatReusableCredentials: credentials
									usedIn: (aCollection at: credentials)
									detailed: aBoolean]]
				title: 'Do you want to reuse credentials?'.
	^ chosen caseOf: {
		[#new] -> [aBlock value].
		[#moreDetails] -> [self offerToReuseCredentials: aCollection detailed: true ifNone: aBlock].
	} otherwise: [chosen]