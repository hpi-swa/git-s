git porcelain
canHandleUrlInternally: aString
	^ {'http://'. 'https://'} anySatisfy: [:each | aString beginsWith: each]