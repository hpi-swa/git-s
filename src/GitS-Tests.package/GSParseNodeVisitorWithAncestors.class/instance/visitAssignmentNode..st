visiting
visitAssignmentNode: anAssignmentNode
	"N.B.  since assigment happens after the value is evaluated the value is visited first."
	self
		visit: anAssignmentNode value;
		visit: anAssignmentNode variable.