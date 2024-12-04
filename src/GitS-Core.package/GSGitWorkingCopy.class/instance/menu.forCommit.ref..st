menu
menu: aMenu forCommit: aCommit ref: refString
	| isRef isRefMenu isBranch refOrCommit refTypeName refShortName currentBranch currentBranchShortName |
	isRef := refString notNil.
	isRefMenu := isRef or: [aCommit isNil].
	isBranch := isRef and: [self isSqueakBranchRef: refString].
	refOrCommit := isRef ifTrue: [refString] ifFalse: [aCommit].
	refTypeName := self refTypeName: refString.
	refShortName := isRef ifTrue: [(GitReference shortName: refString) printString] ifFalse: [nil].
	currentBranch := self currentSymbolicHeadTarget.
	currentBranchShortName := currentBranch ifNotNil: [(GitReference shortName: currentBranch) printString].
	
	aMenu target: self.
	
	refOrCommit ifNotNil: [
		aMenu	addTitle: ('{1} {2}' format: {
			refTypeName capitalized.
			isRef
				ifTrue: [refShortName]
				ifFalse: [aCommit showOneLine printStringLimitedTo: 30]})].
	
	isRef ifTrue: [
		aMenu
			add: ('Switch to {1}' format: {isBranch ifTrue: ['it'] ifFalse: ['a new branch at it']})
			selector: (isBranch ifTrue: [#actionSwitchToBranch:] ifFalse: [#actionCreateBranchAtRefAndSwitchToIt:])
			argument: refString;
			
			add: 'Delete it'
			selector: #actionDeleteRef:
			argument: refString].
	
	aCommit ifNotNil: [
		aMenu
			add: 'Create a branch at it'
			selector: (isRef ifTrue: [#actionCreateBranchAtRef:] ifFalse: [#actionCreateBranchAtCommit:])
			argument: refOrCommit.
		
		isRef ifFalse: [
			aMenu
				add: 'Create a branch at it and switch'
				selector: #actionCreateBranchAtCommitAndSwitchToIt:
				argument: aCommit].
		
		aMenu
			addLine;
			
			add: 'Load it'
			selector: #actionMaterializeCommit:
			argument: aCommit;
			
			add: ('Merge it into {1}' format: {currentBranch ifNotNil: ['branch {1}' format: {currentBranchShortName}] ifNil: ['HEAD']})
			selector: (isRef ifTrue: [#actionMergeRef:] ifFalse: [#actionMergeCommit:])
			argument: refOrCommit;
			
			add: 'Compare it to'
			subMenu: (MenuMorph new in: [:subMenu |
				subMenu
					target: self;
					
					add: 'its parent commit'
					selector: #actionCompareCommitToParent:
					argument: aCommit;
					
					add: 'the image'
					selector: #actionCompareCommitToImage:
					argument: aCommit;
					
					yourself])].
	
	isRefMenu ifTrue: [
		aMenu
			add: 'Manage remotes'
			action: #actionManageRemotes].
	
	aMenu
		add: 'Advanced'
		subMenu: (MenuMorph new in: [:subMenu |
			subMenu target: self.
			aCommit ifNotNil: [
				subMenu
					add: 'Create an external branch at it'
					selector: (isRef ifTrue: [#actionCreateGitBranchAtRef:] ifFalse: [#actionCreateGitBranchAtCommit:])
					argument: refOrCommit;
					balloonTextForLastItem: 'The created branch will be visible from external git tools, like the git command line';
					
					add: ('Switch to {1} (detach HEAD)' format: {isRef ifTrue: ['its latest commit'] ifFalse: ['it']})
					selector: #actionSwitchToCommit:
					argument: aCommit.
				
				currentBranch ifNotNil: [
					| resetLabel |
					resetLabel := 'Reset branch {1} to it' format: {currentBranchShortName}.
					subMenu
						addLine;
						
						add: resetLabel
						selector: #actionResetToCommit:
						argument: aCommit;
						
						add: resetLabel, ' and load'
						selector: #actionResetToCommitAndRestoreIt:
						argument: aCommit;
						
						add: ('Rebase branch {1} onto it' format: {currentBranchShortName})
						selector: #actionRebaseOntoCommit:
						argument: aCommit]].
			
			isBranch ifTrue: [
				subMenu
					addLine;
					
					add: 'Set its remote branch'
					selector: #actionSetUpstreamOfBranch:
					argument: refString;
					
					add: 'Unset its remote branch'
					selector: #actionUnsetUpstreamOfBranch:
					argument: refString].
			
			subMenu]).
	
	^ aMenu