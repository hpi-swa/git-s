initialize-release
initialize
	super initialize.
	self
		caseSensitive: true;
		sources: ({
			GSCommitListPatternMessageSource.
			GSCommitListPatternHexHashSource.
			GSCommitListPatternAuthorNameSource.
			GSCommitListPatternAuthorEmailSource.
			GSCommitListPatternCommitterNameSource.
			GSCommitListPatternCommitterEmailSource.
			GSCommitListPatternFileNamesSource.
			GSCommitListPatternDirectoryNamesSource.
			GSCommitListPatternEntryNamesSource.
			GSCommitListPatternFileContentsSource.
		} collect: [:each |
			each new
				patternMode: self;
				yourself]);
		basicActiveMatcher: self matchers first.