moving
requestNewRepositoryLocation
	| start |
	start := GSPathUtilities ancestorOf: self fsReference that: #isDirectory.
	start := [FileDirectory on: start printString] on: Error do: [FileDirectory default].
	^ (GSGUIUtilities
		chooseDirectory: ('New repository location for project {1}:' format: {self name printString})
		from: start) asFSReference