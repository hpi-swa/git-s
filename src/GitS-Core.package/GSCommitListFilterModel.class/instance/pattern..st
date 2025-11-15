public - pattern
pattern: aString
	"aString should be a pattern as in the pattern mode.
	Answers a Boolean that indicates whether the current commit matches the pattern.
	The current settings for the pattern mode apply."
	^ (self compilePattern: aString) value: self commit