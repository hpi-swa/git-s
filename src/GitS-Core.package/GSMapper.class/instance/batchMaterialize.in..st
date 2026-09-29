changes-operations
batchMaterialize: aCollection in: aWorkingCopy
	"implement on a subclass to materialize all changes of that subclass (and subsubclasses) in a batch
	this is the instance side: changes are batched for each mapper instance"
	self shouldNotImplement. "never called on the root class"