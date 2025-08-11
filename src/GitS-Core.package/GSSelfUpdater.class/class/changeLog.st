change-log
changeLog
	^ {
		'Warnings about uncommitted changes before merging only occur when not up-to-date.'.
		'The list of branches, remote branches, etc. is now a tree. Hover over the root nodes to get an explanation.'.
		'A change log is shown after a self-update (the one you are currently seeing :)).'.
		'Before a manual self-update is done, git-s checks whether a new version exists and prompts the user to cancel if not.'.
		'Add support for the terminal emulator Ptyxis.'.
		'Show the relative path of each change when selecting a changes subtree a changes dialog.'.
		'Offer to switch to the branch created by the ''Branch'' button.'.
		'Offer to reuse credentials.'.
		'Hide excluded changes in dialog unless only excluded changes are selected.'.
		'Add menu item for adding existing projects from disk.'.
		'Add ''Inspect it'' menu item for projects.'.
		'Hide reusable credentials details until requested.'.
		'Reorder and color changes dialog buttons to match other dialogs.'.
		'Add ''Refresh'' menu item for commit and compare to image dialogs.'.
		'Add incremental fetching (speed up fetch/pull after the initial clone for large repositories).'.
		'The ''Refresh'' button in changes dialogs now keeps exclusions, tree expansion and selection.'.
		'When cancelling a commit dialog, the message draft is now remembered and pre-filled when opening the commit dialog again.'.
		'Add ''revert'' menu item for code changes in changes dialog.'.
	}