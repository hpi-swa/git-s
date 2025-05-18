operations
trackCode
	self
		rightClick: self projectName;
		leftClick: 'Manage its packages';
		leftClick: self classCategory.
	[self leftClick: 'Add package'] valueSupplyingAnswer:
		{'Encoding for new package:'. 'Tonel'}.
	self
		closeWindowContaining: 'Package Browser'.