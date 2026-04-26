toolbuilder
buildChildrenInto: aMorph with: builder
	self children groupsOfAtMost: self childrenBuildGroupSize atATimeDo: [:group |
		aMorph isInWorld ifFalse: [^ self].
		group do: [:each | aMorph addMorphBack: (each buildWith: builder)].
		self wait].