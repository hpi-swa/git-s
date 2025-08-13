buttons
addButton: aString action: aBlock color: aColor location: aSymbol
	"aSymbol should be either #bottom or #changesTree"
	self buttons add: {aString. aBlock. aColor. aSymbol}.