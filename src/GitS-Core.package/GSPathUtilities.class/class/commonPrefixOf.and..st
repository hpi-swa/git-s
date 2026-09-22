common-prefix
commonPrefixOf: aPath and: anotherPath
	| minSize prefixSize |
	minSize := aPath size min: anotherPath size.
	prefixSize := (1 to: minSize)
		detect: [:index | (aPath at: index) ~= (anotherPath at: index)]
		ifFound: [:index | index - 1]
		ifNone: [minSize].
	^ FSAbsolutePath withAll: (aPath segments first: prefixSize)