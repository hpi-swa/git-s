accessing
help
	^ 'The current side removed {1}, but the incoming side kept it.
	This change is only shown because the changes in the incoming side produced conflicts.'
		gitSFormat: {self changedMapper name}