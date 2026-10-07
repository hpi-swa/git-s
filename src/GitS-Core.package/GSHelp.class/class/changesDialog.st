pages
changesDialog
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #changesDialog"
	<generated>
	^(HelpTopic
		title: 'Changes dialog'
		contents: 
'The changes dialog will pop up whenever
  1. changes should be loaded into the image (without exceptions)
  2. changes should be committed to the repository (with exceptions, e.g. rebase)
  3. changes should be shown to you (e.g., if you want to compare commits)

It shows the changes organized in a tree hierarchy on the left and their details on the right. You can select individual changes to see their details or select intermediate nodes in the tree to see the details of all descendents of the node (with exceptions, see selecting changes below). In case of a commit dialog, there is also a text area for the commit message.

Before you accept (load, commit, merge, etc.) changes, you have the option of selecting, editing, and (sometimes) refreshing them.

Selecting changes

By default, all changes are included when you accept them. You can exclude individual changes or tree nodes by right clicking them or using the shortcut ctrl/cmd+x. Excluded changes will not be loaded, committed, merged, etc. However, excluding changes does not "undo" them, e.g. for a commit dialog, excluded changes stay in the image for you to commit them later.

Excluded changes are shown in the tree as greyed-out and wrapped in parantheses. Intermediate tree nodes are shown as excluded if all their descendents are excluded.

When you select an intermediate node, only its included descendents are shown in the details pane, unless all descendents are excluded, in which case all descendents are shown.

Editing changes

Sometimes, it is useful to commit a version that is not the one you have in the image. For example, you might have made a bunch of changes to a method, but only want to commit part of them. To support this use case, the changes dialog allows you to edit a change before accepting it. For text-based changes (source code and text assets), you can press the Edit button (the text box will switch from the diff view to a regular view), apply your edits to the text box, and finally save the new version (the text box will show the diff again).

Importantly, edits you make in the changes dialog are not immediately applied to the image, but stay contained to the dialog. This is helpful in the use case described above, because you don''t want to revert your image to an intermediate state, but keep the final state, in order to create the next commit. However, after you accept the changes, you will be prompted to load your edits into the image, which you can freely choose to do or deny. Note that in the case of merge-like actions (merging, cherry-picking, reverting), edits are always loaded into the image.

Refreshing changes

In cases where the shown changes are derived from the state of the image (e.g. the commit dialog), you can refresh the changes. This is helpful if you made changes in the image after you opened the dialog. Refreshing will recompute the changes based on the new state of the image, but keep your exclusions. Note that exclusions are currently the only state kept across a refresh, edits are not preserved but discarded (after a prompt).

Merge conflicts

During a merge-like operation, conflicts can occur. For example, you may have changed a method in different ways on the two branches, such that it is not obvious what the merged solution should look like. In this case, you need to manually resolve the conflict. The changes dialog highlights conflicts in bold in the tree. When you select a change that has conflicts, the details view shows you exactly what happened.

Resolving text conflicts

For text-based changes (code, plaintext assets), conflicts are shown inline: the parts of the text that are free of conflicts are interleaved with conflicts delimited by conflict markers:

	computeImportantResult
		self prepareComputation.
		<<<<<<< current (click to choose, then save)
		self compute: 2 plus: 2.
		=======
		self compute: 7 times: 6.
		>>>>>>> incoming (click to choose, then save)
		self printResult.

In this case, the first and last line of the method were not changed by the conflicting commits, but the middle line was. The conflict markers are annotated with what they show closest to them: the current marker sits above the part of the conflict that belongs to the ''current'' commit, while the incoming marker sits below the respective incoming part. The two parts are separated by a line of equal signs.

The current side represents the commit from which you are starting the merge-like operation: the tip of the current branch (or HEAD if you are in detached HEAD state). The incoming side is the other involved commit: the tip of the branch you are merging, the commit you are cherry-picking or reverting, and so on. This also applies in a rebase: the incoming side is always the currently processed commit, the previous commit has already been adopted as the new tip of the current branch. In case of (automatic) stashing, the incoming side represents the stashed changes that are being restored.

Note that if you need it, you can enable showing the version of the merge base with a preference. It will show in the middle, separated by a third marker containing | (vertical bar) characters.

To resolve such a conflict, you have three options:
 1. you can click on the current/incoming marker lines to choose a version for each conflict (there may be multiple conflicts in a method/asset/...)
 2. you can manually remove the markers to combine the two parts in some meaningful way
 3. you can resolve the entire change to the current or incoming version by pressing the button below the change

Of course, you can also mix and match option 1 and 2. When you''re done editing the change (and you haven''t used a button), you need to save your conflict resolution with ctrl/cmd+s. The change will then switch to a diff view (which shows the diff from the current version to your resolution).

Note that option 3 also resolves automatically merged parts of the change: if one side added something near the top and all conflicts are at the bottom, resolving to the other side via a button will remove the addition near the top.

If you need to restart conflict resolution, you can press the button Reset to conflict.

Resolving asset conflicts

Conflicts can also occur for non-plaintext assets. In this case, the conflicts are shown differently: the versions of the current and incoming side are shown separately. A third resolution pane holds your conflict resolution and a small workspace. You can choose a resolution by either clicking a button below either side or by writing some code in the resolution workspace pane that computes the resolution.
!
]style[(527 17 220 17 30 8 31 7 638 15 358 4 750 18 109 7 323 15 11 5 17 9 379 24 172 17 1323 12 1099 17 3 25 411),i,,Hselecting-changes;,,i,,i,,Hediting-changes;,,i,,Hrefreshing-changes;,,i,,Hmerge-conflicts;,,lmerging;,,i,,Hresolving-text-conflicts;,,i,,Rcode://(Preferences pragmaPreferenceFor: GSPreferences getter: #showBase) open;,,i,,Hresolving-asset-conflicts;,!' readStream nextChunkText)
			key: #changesDialog;
			shouldStyle: false;
			yourself