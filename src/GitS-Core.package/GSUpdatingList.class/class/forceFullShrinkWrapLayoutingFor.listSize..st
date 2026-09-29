scrolling
forceFullShrinkWrapLayoutingFor: aPluggableMultiColumnListMorph listSize: aNumber
	aPluggableMultiColumnListMorph listMorphs do: [:each |
		1 to: aNumber do: [:index | each item: index "forces maxWidth update"]].