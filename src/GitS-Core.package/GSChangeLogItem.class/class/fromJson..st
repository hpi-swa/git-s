instance creation
fromJson: aDictionary
	^ self new
		message: ((aDictionary at: 'commit') at: 'message');
		url: (aDictionary at: 'html_url');
		yourself