initialize-release
initialize
	super initialize.
	self
		isStopped: false;
		buffer: OrderedCollection new;
		clearGoal;
		wakeUpSemaphore: Semaphore new;
		mutex: Mutex new.