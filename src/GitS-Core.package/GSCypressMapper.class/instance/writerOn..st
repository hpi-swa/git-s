changes-operations
writerOn: aReference
	| repository fileUtils fileTreeWriter |
	repository := MCDirectoryRepository new
					directory: aReference;
					yourself.
	fileUtils := self fileUtilsOn: aReference.
	fileTreeWriter := (GSMCFileTreeWriter on: repository)
						directory: (GSPathUtilities asString: aReference path);
						fileUtils: fileUtils;
						initializePackageFileDirectoryCache;
						yourself.
	^ (GSMCFileTreeStCypressWriter on: fileTreeWriter)
		fileUtils: fileUtils;
		yourself