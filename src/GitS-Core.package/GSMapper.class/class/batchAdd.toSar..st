sar
batchAdd: aCollection toSar: aSarBuilder
	"implement on a subclass to add all mappers of that subclass (and subsubclasses) in a batch"
	self shouldNotImplement. "never called on the root class"