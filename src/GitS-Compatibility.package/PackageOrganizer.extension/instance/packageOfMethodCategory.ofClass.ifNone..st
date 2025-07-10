*GitS-Compatibility-Squeak6-override
packageOfMethodCategory: categoryName ofClass: aClass ifNone: errorBlock
	^ self packages detect: [:ea | ea includesMethodCategory: categoryName ofClass: aClass] ifNone: errorBlock