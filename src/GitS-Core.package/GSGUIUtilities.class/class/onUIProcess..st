processes
onUIProcess: aBlock
	| result semaphore |
	Project current uiProcess isActiveProcess ifTrue: [^ aBlock value].
	semaphore := Semaphore new.
	Project current addDeferredUIMessage: [result := aBlock value. semaphore signal].
	semaphore wait.
	^ result