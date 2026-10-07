pages
rebasing
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #rebasing"
	<generated>
	^(HelpTopic
		title: 'Rebasing'
		contents: 
'Rebasing is the act of moving a chain of commits to another base, i. e. another parent for the start of the chain. For example, you may start in a situation like this, with two branches topic and main:

	        E---F---G < topic
	       /
	A---B---C---D < main

A successful rebase from topic onto main will move the chain of commits E, F, and G on top of the new base D:

	              main
	                 v
	A---B---C---D---E''---F''---G'' < topic

Rebasing thus produces a more linear history of commits. To achieve this result, a rebase will replay the commits to be rebased (E, F, and G) on top of the new base. This means that each commit is individually cherry-picked to its new location. Cherry-picking means taking the changes from a commit''s parent to the commit and applying those on top of a different parent, producing a new commit. This process is a merge-like operation and can thus produce merge conflicts. For example, consider cherry-picking a commit that changes a method onto a commit that does not have that method anymore.

Note however that the commits do not stay exactly the same: because the commits change their parents, their content changes. For example, a method unrelated to E may have changed between B and D. The new version of E will contain the version from D, not B, so the new version of E is different from E (so in the figure above, the new version is called E'' instead).

The fact that commits change during a rebase also means that if you already pushed the commits, you need to force push after the rebase. This comes with the potential problems mentioned in the section on force pushing.

Besides linearizing history, a rebase can also be used to change the history (the commits) of a branch. This can be achieved by rebasing a chain of commits onto the same base and then adjusting how the commits are replayed: the default is cherry-picking in the order defined by the original branch, as described above, but you can change the order of the commits before executing the rebase and you can change the rebase command from cherry-picking to something else.

For example, if you noticed that you made a mistake in an earlier commit, but you cannot amend anymore because you created other commits since then, you can create a new fixup commit and use the fixup command to fix the broken commit. The command still cherry-picks the changes from your fixup commit, but instead of creating a new commit, it amends the previously picked commit (your broken commit) and keeps its commit message. See below for more details on available rebase commands.

Starting a rebase

First, ensure that you are on the branch whose commits you want to rebase onto a new base. Then, right-click the new base (a branch or commit) and select Advanced > Rebase branch ''<current branch>'' onto it. Once a rebase has started, a window pops up that shows you the commits that will be rebased. The rebase is not executed yet though, so you can apply changes to the commands before executing it (see below).

Executing a rebase

To execute a rebase, click the Run button. Once you do so, git/s will execute the commands from top to bottom. Unless a command says otherwise, the rebase does not stop to open changes dialogs and automatically progresses to the next command when the previous one has run successfully. A common exception to this rule is the case of merge conflicts: these always cause a changes dialog to pop up, so you can resolve the conflicts. After accepting the dialog, the rebase automatically continues.

You can click Abort to cancel the rebase, even half-way through the rebase. This will restore the current branch and the image to what they were before you started the rebase.

Reordering commits

To reorder commits, simply drag and drop a commit to where it should be. After dropping the commit onto another, the commit will be placed below it (executed after it). To move a commit to the start of the rebase, drop it on the first, greyed-out line that contains the instructions.

Changing rebase commands

To change a rebase command to a different one for a given commit, right-click the commit and select the command you want to change to from the Change type submenu. Note that changing from a command that operates on a commit to one that does not is intentionally not supported to prevent you from accidentally dropping commits during a rebase. If you really want to do this, first change the commit''s command to drop (or use the Delete option), then add a new command using the Add button, and finally move the new command to the correct position.

These are the available command types; first the ones that operate on a commit:

pick performs the cherry-picking operation described above. It is the default command.

reword is similar to pick, but allows you to change the commit message before committing.

edit is similar to pick, but pauses after cherry-picking the changes into your image and before opening a commit dialog. You can thus make changes in your image and when you are ready, you can click Continue. A changes dialog then pops up to create the new commit. After you accept it, the rebase progresses to the next command.

fixup cherry-picks the changes, but amends the previous commit, replacing it with a new commit that contains both the previous changes and the newly cherry-picked ones.

squash is similar to fixup, but combines the commit messages of the old and new comm

revert cherry-picks a commit, but reverses the changes (e. g. method additions become method deletions). This is not very useful on its own, but can become useful when you combine it with a pick command of the same commit, placed somewhere earlier in the rebase.

drop is equivalent to noop, it does nothing and proceeds to the next command. Effectively, this removes the associated commit and its changes from the current branch. It exists to remind you that you are removing a commit and to allow you to easily undo an accidental deletion of one of the commands above: "deleting" one of them instead turns it into a drop command. You can then change the type of the drop command back to a different command from above.

These are the ones that work with labels:

label stores a named reference to the current tip of the current branch, to be used by the two commands below.

reset resets the current branch to the commit referenced by the given label.

merge is currently unsupported (but planned for the future) and will show an error when run.

These are the ones without an associated commit:

break stops automatic progression to the next command, sometimes helpful to inspect the intermediate state. You can resume the rebase with the Continue button.

update-ref updates a given ref (branch, tag, etc.) to point to the commit that is at the tip of the current branch when the update-ref command is executed. Note that the update only takes effect when the rebase successfully completes (i. e. the updates to be done are deferred until then).

exec executes arbitrary Smalltalk code. Enter an expression and it will be executed once the command is run. When the expression produces an error, the rebase is paused and you can try to fix the situation. When you press Continue, the exec command is retried.

noop does nothing and proceeds to the next command.
!
]style[(60 4 122 5 5 4 283 6 59 6 109 13 942 13 417 14 130 5 76 5 26 7 280 17 156 8 3 40 209 18 33 3 374 21 81 5 158 18 287 24 145 11 257 4 13 6 43 3 149 4 84 6 85 4 195 8 123 5 31 6 128 6 80 6 258 4 497 5 107 5 1 6 66 5 139 5 138 8 10 10 281 4 218 8 32 4 48),i,,i,,i,,i,,i,,i,,lpushingAndPulling:force-pushing;,,i,,lcommitting:amending-commits;,,i,,i,,Hstarting-a-rebase;,,i,,i,,Hexecuting-a-rebase;,,i,,lchangesDialog:merge-conflicts;,,i,,Hreordering-commits;,,Hchanging-rebase-commands;,,i,,i,,i,,i,,i,,i,,i,,i,,i,,lcommitting:amending-commits;,,i,,i,,i,,i,,i,,lbranching:resetting-branches;,,i,,i,,i,,i,,i,,i,,i,!' readStream nextChunkText)
			key: #rebasing;
			shouldStyle: false;
			yourself