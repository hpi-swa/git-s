*GitS-Compatibility-Squeak6-override
update: aspect
	"See ListItemWrapper and subclasses for possible change aspects."
	
	aspect = #contents ifTrue: [
		self isExpanded ifTrue: [self toggleExpandedState].
		self canExpand ifTrue: [self toggleExpandedState].
		container adjustSubmorphPositions].
	
	aspect = #label ifTrue: [self contents: self getLabel].
		
	super update: aspect.