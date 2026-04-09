accessing
help
	^ 'The current side removed {1}, but the incoming side kept it.
	This change is only shown because there are changes in the incoming side.'
		gitSFormat: {self changedMapper name}