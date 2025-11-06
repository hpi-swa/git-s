operations
trackCode
	self
		rightClick: self projectName;
		leftClick: 'Manage its packages';
		leftClick: self classCategory;
		do: [self leftClick: 'Add package']
		supplyingAnswer: #('Encoding for new package:' 'Tonel');
		closeWindowContaining: 'Package Browser'.