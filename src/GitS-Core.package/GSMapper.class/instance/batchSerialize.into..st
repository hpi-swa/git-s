changes-operations
batchSerialize: aCollection into: aFileSystem
	"implement on a subclass to serialize all changes of that subclass (and subsubclasses) in a batch
	this is the instance side: changes are batched for each mapper instance"
	self shouldNotImplement. "never called on the root class"