toolbuilder
buildImportFileButton: builder
	^ builder pluggableActionButtonSpec new
		model: self operationLifecycle;
		action: #actionImportFile;
		label: 'Import file';
		help: 'Choose a file and import it as an asset.';
		yourself