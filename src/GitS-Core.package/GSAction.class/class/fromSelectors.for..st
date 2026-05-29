instance creation
fromSelectors: anArray for: receiverObject
	^ self new
		label: anArray first;
		keyStroke: anArray second;
		runBlock: [receiverObject perform: anArray third];
		isActiveFrom: anArray fourth for: receiverObject;
		yourself