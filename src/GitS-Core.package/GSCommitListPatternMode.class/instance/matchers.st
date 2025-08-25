accessing
matchers
	^ {
		GSCommitListPatternSubstringMatcher.
		GSCommitListPatternEqualityMatcher.
		GSCommitListPatternBeginsWithMatcher.
		GSCommitListPatternEndsWithMatcher.
		GSCommitListPatternMatchMatcher.
		GSCommitListPatternMatchesRegexMatcher.
		GSCommitListPatternIncludesRegexMatcher.
	}