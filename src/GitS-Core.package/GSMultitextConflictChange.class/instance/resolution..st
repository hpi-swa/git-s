accessing
resolution: anObject
	resolution := anObject.
	self updateTexts.
	{#isResolvedToBase. #isResolvedToLeft. #isResolvedToRight. #isRemoval}
		do: [:each | self changed: each].