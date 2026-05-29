sar
addToSar: aSarBuilder
	| pathString |
	pathString := GSPathUtilities asRelativeString: self path.
	aSarBuilder addString: self contents at: pathString.
	^ '({1} withMapper: {2} contents: (self memberNamed: {3}) contents asByteArray)'
		format: {self class name. self mapper storeString. pathString storeString}