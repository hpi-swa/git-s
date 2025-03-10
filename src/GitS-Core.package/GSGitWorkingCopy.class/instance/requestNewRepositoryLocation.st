moving
requestNewRepositoryLocation
	| start |
	start := GSPathUtilities ancestorOf: self fsReference that: #isDirectory.
	start := FileDirectory on: start printString.
	^ (GSGUIUtilities
		chooseDirectory: 'New repository location:'
		from: start) asFSReference