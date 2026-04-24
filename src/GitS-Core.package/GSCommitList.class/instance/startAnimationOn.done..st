generating
startAnimationOn: aMorph done: aBlock
	((aMorph ownerThatIsA: SystemWindow) ifNil: [aMorph world])
		addMorphInLayer: (GSLoadingAnimationMorph new
								morph: aMorph;
								done: aBlock;
								yourself).