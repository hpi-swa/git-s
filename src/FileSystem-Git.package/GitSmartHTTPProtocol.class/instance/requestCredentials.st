private
requestCredentials
	credentials ifNotNil: [^ {self client username. self client password} ~= credentials].
	^ super requestCredentials