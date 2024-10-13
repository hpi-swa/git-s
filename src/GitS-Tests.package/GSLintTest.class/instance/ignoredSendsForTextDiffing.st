ignored-sends
ignoredSendsForTextDiffing
	^ #(diffChunksFrom:to: diffFromLines:toLines:) gather: [:selector |
		#(common different) collect: [:symbol | GSTextUtilities class>>selector -> symbol]]