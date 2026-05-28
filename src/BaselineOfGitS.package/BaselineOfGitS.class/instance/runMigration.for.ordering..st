migrations - running
runMigration: aSelector for: aSymbol ordering: anInteger
	self perform: aSelector.
	self lastRunMigrationFor: aSymbol put: anInteger.