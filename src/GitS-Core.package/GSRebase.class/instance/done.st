running
done
	self operation decreaseDeferMaterializationLevel.
	self
		updateRefs;
		inform: 'Rebase complete.';
		close.