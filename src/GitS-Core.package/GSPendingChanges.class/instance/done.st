actions-private
done
	self closeDialog.
	self promise resolveWith: nil.
	self operation decreaseDeferMaterializationLevel.
	^ self promise