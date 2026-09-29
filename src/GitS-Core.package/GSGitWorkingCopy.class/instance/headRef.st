head
headRef
	^ self basicHeadRef ifNil: [
		GSGUIUtilities
			title:
				'This repository is not initialized yet.
				Did it move and you haven''t chosen a new location yet?
				Otherwise, this might be a bug.'
					gitSFormat
			chooseOptionFromLabeledBlocks: {
				'Initialize it' -> [self initializeHead. self headRef].
				'Move to new location' -> [self actionChooseNewRepositoryLocation. self headRef].
			}
			cancelLabel: 'Cancel']