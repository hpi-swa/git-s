failures
expectedFailures
	^ ({Checksum. CRC. GSMCFileTreeFileSystemUtils. GSMCFileTreeStCypressReader. GSMCFileTreeStCypressWriter. GSMCFileTreeWriter}
			includes: self classToBeTested) ifTrue: [#()] ifFalse: [#(testClassComment)]