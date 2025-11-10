finding
formMatcherFor: anObject
	^ [:form | form isForm and: [anObject storeString = form storeString]]