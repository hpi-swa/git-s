api
boostProcessPriorityAndWaitWithTimeout: aDuration
	| activePriority localWakeUp oldPriority |
	oldPriority := self process priority.
	activePriority := Processor activePriority.
	localWakeUp := Semaphore new.
	self assert: activePriority + 2 <= Processor highestPriority.
	"use a separate higher-prio watchdog process because boosting self process
	above activeProcess prevents activeProcess from reversing that boost"
	[[self process priority: activePriority + 1.
	self wakeUpSemaphore waitTimeoutMSecs: aDuration asMilliSeconds]
		ensure: [self process priority: oldPriority].
	localWakeUp signal]
		forkAt: activePriority + 2.
	localWakeUp wait.