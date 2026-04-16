*GitS-Compatibility-Squeak60AndEarlier-override
toFinalizeSend: aSelector to: aFinalizer
	"When I am finalized (e.g., garbage collected) send aSelector to the appropriate finalizer (the guy who knows how to do any needed cleanup).
	WARNING: The finalizer is not allowed to reference me. If they do, then I will NEVER be garbage collected. Since this cannot be validated here, it is up to the client to make sure this invariant is not broken."
	self == aFinalizer ifTrue:[self error: 'I cannot finalize myself'].
	^self finalizationRegistry add: self executor:
		(ObjectFinalizer new
			receiver: aFinalizer;
			selector: aSelector;
			yourself)