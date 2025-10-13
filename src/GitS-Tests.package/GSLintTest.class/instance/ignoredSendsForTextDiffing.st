ignored-sends
ignoredSendsForTextDiffing
	^ #(diffChunksFromLines: diffFromLines:) gather: [:selector |
		#(common different) collect: [:symbol | GSTextUtilities class>>selector -> symbol]]