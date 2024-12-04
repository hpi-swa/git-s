actions
materialize
	self
		dialogClass: GSChangesDialog;
		verb: 'load';
		checkBlock: [self checkCanMaterialize];
		actionBlock: [self materializeNow].
	^ self run