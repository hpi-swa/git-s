toolbuilder
close
	self changed: #close.
	self commitListProcess ifNotNil: #terminate.