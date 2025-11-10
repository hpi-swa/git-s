resolving
resolveTo: withString butNot: withoutString
	| button container |
	container := self findContainerWith: withString butNot: withoutString.
	button := self find: 'Resolve to this version' in: container morph.
	self leftClick: button.