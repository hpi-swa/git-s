finding
findUnimplementedAndUnsentMethods
	| implemented sent packageImplemented packageSent unimplemented unsent |
	implemented := Set new.
	implemented addAll: Smalltalk globals keys.
	sent := Set new.
	packageImplemented := OrderedCollection new.
	packageSent := OrderedCollection new.
	CurrentReadOnlySourceFiles cacheDuring: [
		(SystemNavigation default allBehaviors gather: [:each | each methodDict values]) contents
			do: [:compiledMethod | | included |
				included := self packageInfo includesMethodReference: compiledMethod methodReference.
				implemented add: compiledMethod selector.
				included ifTrue: [packageImplemented add: compiledMethod].
				self sendsOf: compiledMethod do: [:selector |
					sent add: selector.
					included ifTrue: [packageSent add: compiledMethod -> selector]]]
			displayingProgress: [:each | 'Analyzing ', each methodReference]].
	unimplemented := packageSent reject: [:each | implemented includes: each value].
	unsent := (packageImplemented reject: [:each | sent includes: each selector]).
	^ Dictionary newFrom: {'unimplemented' -> unimplemented. 'unsent' -> unsent}