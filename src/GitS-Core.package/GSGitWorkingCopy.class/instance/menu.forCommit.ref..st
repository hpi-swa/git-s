menu
menu: aMenu forCommit: aCommit ref: refString
	| isRef isRefMenu isBranch refOrCommit commitName commitPossessive refTypeName refShortName currentBranch currentBranchShortName target advancedMenu |
	isRef := refString notNil.
	isRefMenu := isRef or: [aCommit isNil].
	isBranch := isRef and: [self isBranch: refString].
	refOrCommit := isRef ifTrue: [refString] ifFalse: [aCommit].
	commitName := isRef ifTrue: ['its latest commit'] ifFalse: ['it'].
	commitPossessive := isRef ifTrue: ['its latest commit''s'] ifFalse: ['its'].
	refTypeName := self refTypeName: refString.
	refShortName := isRef ifTrue: [(GitReference shortName: refString) printString] ifFalse: [nil].
	currentBranch := self currentSymbolicHeadTarget.
	currentBranchShortName := currentBranch ifNotNil: [(GitReference shortName: currentBranch) printString].
	target := self operationStarter.
	
	aMenu target: target.
	
	refOrCommit ifNotNil: [
		aMenu	addTitle: ('{1} {2}' format: {
			refTypeName capitalized.
			isRef
				ifTrue: [refShortName]
				ifFalse: [aCommit showOneLine printStringLimitedTo: 30]})].
	
	isRef ifTrue: [
		aMenu
			add: ('Switch to {1}' format: {isBranch ifTrue: ['it'] ifFalse: ['a new local branch at it']})
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
			
			add: 'Compare'
			subMenu: (MenuMorph new in: [:subMenu |
				subMenu
					target: target;
					
					add: 'it to its parent commit'
					selector: #actionCompareCommitToParent:
					argument: aCommit;
					
					add: 'it to another commit...'
					selector: #actionCompareCommitToDialogCommit:
					argument: aCommit;
					
					add: 'it to the image'
					selector: #actionCompareCommitToImage:
					argument: aCommit;
					
					add: 'the image to it'
					selector: #actionCompareImageToCommit:
					argument: aCommit;
					
					yourself])].
	
	aMenu
		add: 'Copy'
		subMenu: (MenuMorph new in: [:subMenu |
			subMenu target: Clipboard.
			
			isRef ifTrue: [{
					'short name'. GitReference shortName: refString.
					'full name'. refString.
				} pairsDo: [:label :value |
					subMenu
						add: ('its {1}' format: {label})
						selector: #clipboardText:
						argument: value]].
			
			aCommit ifNotNil: [{
					'commit hash'. aCommit hexHash.
					'commit message'. aCommit message.
					'author''s name'. aCommit author name.
					'author''s email'. aCommit author email.
					'committer''s name'. aCommit committer name.
					'committer''s email'. aCommit committer email.
				} pairsDo: [:label :value |
					subMenu
						add: ('{1} {2}' format: {commitPossessive. label})
						selector: #clipboardText:
						argument: value]].
			
			subMenu]).
	
	isRefMenu ifTrue: [
		aMenu
			add: 'Manage remotes'
			action: #actionManageRemotes].
	
	advancedMenu := MenuMorph new.
	advancedMenu target: target.
	
	aCommit ifNotNil: [
		advancedMenu
			add: 'Create an external branch at it'
			selector: (isRef ifTrue: [#actionCreateExternalBranchAtRef:] ifFalse: [#actionCreateExternalBranchAtCommit:])
			argument: refOrCommit;
			balloonTextForLastItem: 'The created branch will be visible from external git tools, like the git command line';
			
			add: ('Switch to {1} (detach HEAD)' format: {commitName})
			selector: #actionSwitchToCommit:
			argument: aCommit;
			
			addLine;
			
			add: ('Cherry-pick {1}' format: {commitName})
			selector: #actionCherryPick:
			argument: aCommit;
			
			add: ('Revert {1}' format: {commitName})
			selector: #actionRevert:
			argument: aCommit.
		
		currentBranch ifNotNil: [
			| resetLabel |
			resetLabel := 'Reset branch {1} to it' format: {currentBranchShortName}.
			advancedMenu
				addLine;
				
				add: resetLabel
				selector: #actionResetToCommit:
				argument: aCommit;
				
				add: resetLabel, ' and load'
				selector: #actionResetToCommitAndRestoreIt:
				argument: aCommit].
		
		advancedMenu
			add: ('Rebase {1} onto it' format: {
				currentBranchShortName
					ifNotNil: ['branch {1}' format: {currentBranchShortName}]
					ifNil: ['HEAD ({1})' format: {
						self headCommit
							 ifNotNil: [:commit | commit showOneLine truncateWithElipsisTo: 15]
							ifNil: ['no commit yet']}]})
			selector: #actionRebaseOntoCommit:
			argument: aCommit].
	
	isRef ifTrue: [
		advancedMenu
			addLine;
			
			add: 'Browse its reflog'
			selector: #actionOpenReflogOn:
			argument: refString].
	
	isBranch ifTrue: [
		advancedMenu
			addLine;
			
			add: 'Set its remote branch'
			selector: #actionSetUpstreamOfBranch:
			argument: refString;
			
			add: 'Unset its remote branch'
			selector: #actionUnsetUpstreamOfBranch:
			argument: refString].
	
	advancedMenu hasItems ifTrue: [
		aMenu add: 'Advanced' subMenu: advancedMenu].
	
	^ aMenu