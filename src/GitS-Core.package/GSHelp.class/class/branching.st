pages
branching
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #branching"
	<generated>
	^(HelpTopic
		title: 'Branching'
		contents: 
'If you want to work on multiple things in parallel or you want to be undisturbed by others, you can create a branch. A branch contains a line of commits that is independent from other branches. You can switch between branches whenever you want and when you finished your work on one branch, you can merge it into another to combine their commits and changes. You start off on a default branch named main.

A branch is basically a name for the latest commit on that branch, which is also called the branch''s tip:

	              main
	                 v
	A---B---C---D

Here, D is main''s tip. When you create a commit, the new commit automatically becomes the new tip of your current branch:

	                   main
	                      v
	A---B---C---D---E

Types of branches

The branches you can work on are called local branches. They are different from remote branches, which you can see, but only change by pushing. They represent the state of a branch on a remote, such as GitHub. If you want to change a remote branch, create a local one first and then push to the remote branch.

For information on other types of branches and refs, see below.

Viewing branches

All branches are shown in the middle left pane. The branches are organized in a tree structure according to their type. The tree structure also interprets / (slash) characters in your branch names as a hierarchy, so feature/abc, feature/def, and feature/ghi show up as abc, def, and ghi in a feature directory. However, this is only done when there are actually multiple branches in a directory, so a/branch/with/a/deep/hierarchy is shown as a single entry with slashes.

The current branch is highlighted in bold. When you left-click on a branch, the commit list to the right changes to show the branch''s tip at the top, followed by its ancestors. Right-clicking a branch shows you a menu that includes, among others, the actions that you would see if you right-click the branch''s tip.

Creating branches

To create a branch, you have three options:
 1. create one with the Branch button
 2. create one by right-clicking a commit
 3. create one by right-clicking a branch

In each case, a popup will ask you for a name. Note that you can reuse the name of a remote branch, as their names will not collide. You can also choose the name of an existing branch to overwrite it (a prompt will ask you to confirm).

Switching between branches

To switch to a different branch, right click it and select Switch to it. If you have uncommitted changes on your current branch, a popup will ask you whether you want to save them on your current branch or take them with you. Then, a changes dialog will pop up to confirm loading of the changes from your current to the new branch.

Comparing branches

To compare two branches, right-click the first branch, select Compare > it to another commit..., left-click the other branch (this will select the commit at its tip) and press Select commit.

Merging branches

See merging.

Other types of branches and refs

Local branches are actually specific to the Squeak image you are working on. When you create another image to work on the same repository, you get a new set of local branches in that image. For this reason, local branches are namespaced and hidden in such a way that external git clients (such as the git commandline) do not normally show them to you. Instead, they only show the regular git branches, which are called external branches in git/s. See below on how to work with external branches.

Besides the three types of branches, there are other refs, short for references - the common word for everything that references a commit (or other ref). A branch simply references its latest commit, also called its tip. Then there are tags, which are immovable and reference one specific commit, for example to mark a release like v1.5.3. There is currently no way to create tags from within git/s.

Lastly, there is HEAD, a special ref that you most likely do not need to know about, so you can skip this paragraph. For those that do want/need to know, HEAD is a symbolic reference, which means that it (usually) references another ref instead of a commit. HEAD is special because it points to the current branch or commit. Whenever you switch to a different branch, HEAD is updated to point to it. HEAD is also what allows you to switch directly to a commit. In this case, HEAD does not point to a branch, but a commit. This situation is known as detached HEAD state. Similarly to the namespacing of local branches, each image also has its own HEAD (so that you can be on different branches in different images), in addition to the HEAD used by external git clients.

Working with external branches

To work on one of your branches outside of Squeak, using external git clients, you can use external branches. To create one, right-click an existing branch (or a commit) and select Advanced > Create an external branch at it. git/s will suggest a name for you based on the branch you selected. Note that, as described above, local branches and external branches live in separate namespaces, so you can use the same name (e. g. main) for both a local and an external branch.

You can now checkout the newly created (external) branch using your external git client. Note that git/s currently does not make changes to your working copy on disk (the files you see when you navigate to the repository on disk), so checking out the branch is necessary to work on the files.

Once you are done working externally, you can integrate your changes back into Squeak. To do so, right-click the external branch and merge it. Alternatively, if your external work included changes to the history of the branch, you can also reset or rebase your local branch.

If you made changes to your local branch after you have created the external branch and you want to work externally again, you need to update the external branch. To do so, simply recreate the external branch as described above. git/s will ask you whether you want to overwrite the branch, which you can confirm.

Resetting branches

To manually change which commit a branch points to (i. e., change the branch''s tip), you can reset it. First, make sure that you are on the branch that you want to reset. Then, find the commit that you want it to refer to, right-click it, and select Advanced > Reset branch ''<current branch>'' to it. Optionally, you can choose the option below it (...and load) to also load the new tip into the image. Note that the commit you select as the new tip can, but does not need to, belong to the branch you are resetting.

Resetting is useful in a few cases. For example, you may want to undo the last (few) commits on your branch. To do so, find the parent of the (oldest) commit you want to undo, then reset your branch to it. If you also want to undo the changes in the commits, you should select the and load option. Another use case is discarding your local work and adopt a different line of commits instead, like the one on a remote. To do that, simply right-click the upstream branch reset your branch to it (and load).

The reflog

Besides tracking a branch''s tip, git/s also tracks the list of previous tips of the branch. This list is called the reflog (reference log) of the branch. There is one reflog for each ref (and branches are refs). You can browse a ref''s reflog by right-clicking it and selecting Advanced > Browse its reflog. A list will pop up that is similar to the commit list in the Git Browser. The only difference is that the message column contains reflog messages instead of commit messages. Reflog messages describe why a ref was updated to point to a different commit. In case the reason was that you created a new commit, the commit message is included in the reflog message.

You can right-click the items in the list to get the same menu as in the commit list. You can use this menu for example to inspect old commits that were discarded for some reason or you can reset your current branch to an old version of it.
!
]style[(109 6 284 4 104 3 252 17 42 14 26 15 40 7 226 5 3 16 790 17 70 6 330 26 61 12 163 14 85 18 64 7 3 23 81 13 3 16 6 7 3 32 421 17 15 5 94 4 12 10 137 3 17 4 178 4 143 18 367 19 202 30 183 8 3 31 785 5 4 6 335 18 95 5 152 8 3 37 50 11 439 8 217 10 118 6 155 8 3 17 554 5 46),i,,i,,i,,Htypes-of-branches;,,i,,i,,lpushingAndPulling:pushing;,,lbranching:other-types-of-branches-and-refs;,,Hviewing-branches;,,Hcreating-branches;,,i,,Hswitching-between-branches;,,i,,lchangesDialog;,,Hcomparing-branches;,,i,,i,,i,,Hmerging-branches;,,lmerging;,,Hother-types-of-branches-and-refs;,,i,,lbranching:working-with-external-branches;,,i,,i,,i,,i,,i,,i,,i,,Hworking-with-external-branches;,,i,,i,,lbranching:resetting-branches;,,lrebasing;,,Hresetting-branches;,,i,,i,,i,,i,,i,,Hthe-reflog;,,i,,i,,i,,lbranching:resetting-branches;,!' readStream nextChunkText)
			key: #branching;
			shouldStyle: false;
			yourself