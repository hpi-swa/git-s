toolbuilder
buildChildrenInto: aMorph with: builder
	self children groupsOfAtMost: self childrenBuildGroupSize atATimeDo: [:group | | built |
		aMorph isInWorld ifFalse: [^ self].
		built := group collect: [:each | each buildWith: builder].
		Project current addDeferredUIMessage: [aMorph addAllMorphsBack: built].
		self wait].