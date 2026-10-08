interactions
inWindowContaining: anObject do: aBlock
	| original |
	original := SystemWindow keyWindow.
	(self findWindowContaining: anObject) beKeyWindow.
	aBlock ensure: [original beKeyWindow].