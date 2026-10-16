toolbuilder
shouldHaveShowAllCheckBox
	^ self items anySatisfy: [:each | (self basicShouldShow: each type) not]