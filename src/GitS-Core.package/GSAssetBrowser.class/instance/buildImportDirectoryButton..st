toolbuilder
buildImportDirectoryButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationStarter;
		action: #actionImportDirectory;
		label: 'Import directory';
		help: 'Choose a directory and import all (deeply) nested files.';
		yourself