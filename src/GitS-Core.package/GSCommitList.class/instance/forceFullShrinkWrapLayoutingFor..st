ui
forceFullShrinkWrapLayoutingFor: aPluggableMultiColumnListMorph
	aPluggableMultiColumnListMorph listMorphs do: [:each |
		1 to: self commits size do: [:index | each item: index "forces maxWidth update"]].