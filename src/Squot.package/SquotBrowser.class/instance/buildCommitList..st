toolbuilder
buildCommitList: builder
	^ builder pluggableTreeSpec new
		model: self;
		roots: #commitList;
		nodeClass: SquotCommitWrapper;
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 1]) max].
			[:listMorph | (listMorph filteredItems collect: [:item |
					item preferredWidthOfColumn: 2]) max].
			nil.
		};
		frame: LayoutFrame fullFrame;
		yourself