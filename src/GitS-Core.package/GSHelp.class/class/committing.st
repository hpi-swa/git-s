pages
committing
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #committing"
	<generated>
	^(HelpTopic
		title: 'Committing'
		contents: 
'To save (versions of) your work and share it with others, you need to commit your changes. You can do so by clicking the button Commit in the Git Browser. This will cause a changes dialog to pop up, which shows you a preview of what you are about to commit (similar to a staging area in other git implementations). You can take your time to review your changes, exclude, or edit them (see the linked topic). Finally, you need to enter a commit message to proceed. This will be stored alongside other metadata such as your name and email, and the commit time stamp. You will create many commits, each with some specific change. When you later scroll through your list of commits, the commit messages should help you find changes by acting as summaries of the commits.

Viewing commits

When you create commits, they are shown in the big list in the top right, called the commit list. Each of its items represents one commit and shows the commit time stamp (relative to the current time), the committer''s name, and the first line of the commit message. The full metadata of a commit can be seen in the text box at the bottom, for example:

	Commit 00ee04018f3115c569dffa97558a7a9966e51715
	Parents: 3e78fe70cc2cda8b650f7ad43191cd5bdde619ea
	Author: Marius Dörbandt <github.marius@doerbandt.de> Wed Oct 9 18:04:06 2024 +0200
	Committer: Marius Dörbandt <github.marius@doerbandt.de> Thu Oct 10 02:07:02 2024 +0200
	
	Rename and migrate Squot to git/s
	
	* all classes, packages and extension methods that refer to Squot are
	  renamed
	* GSSelfUpdater now handles self-updating and produces a version-pinned
	  install script for .sar files
	* .squot-metadata is renamed to .git-s-metadata
	* SquotTrackedObjectMetadata and the old names of mapper and metadata
	  classes are handled using TonelReader''s classes instVar, which is used
	  as a fallback for global name lookup
	* on install, registered instances of old working copy classes are
	  migrated and Squot is uninstalled

This is the metadata you can see, from top to bottom:
 1. the commit hash (see fundamentals below)
 2. the commit''s parents (see fundamentals as well)
 3. author: combination of name, email, and time stamp - who wrote the changes in this commit and when
 4. committer: who committed these changes; usually the same as the author, but can be different (for example when a commit was amended or committed from a patch)
 5. all remaining text: the full commit message

To see what changed in a commit, see the next section.

Comparing commits

You can compare commits to other commits or to the image, which shows you what changed between the two: right-click a commit and select an option in the Compare submenu. The options follow a Compare X to Y structure. The changes dialog that opens once you selected X and Y shows you the changes necessary to go from Y to X (see below for the reasoning behind this). The option Compare it to another commit... first opens another dialog that is similar to the Git Browser. You should select a commit (simply left-click it) and then click the Select commit button on the bottom. Then, the changes dialog will open.

The reason for the "reverse" ordering described above is that the more natural way of phrasing a comparison between a commit and some other, e. g. its parent, is "compare it to its parent", rather than "compare its parent to it". Meanwhile, the changes you want to see in this comparison are usually the one from the latter to the former (from Y to X) instead of the order in the phrase (from X to Y).

Fundamentals about commits

Each commit has a bunch of metadata associated with it. We will discuss two data points in particular, the commit''s hash and its parents.

A commit''s hash uniquely identifies the commit. It is a string of 40 hexadecimal digits that that is computed using a cryptographic hash function (SHA-1) based on all the data and metadata of the commit (except for the hash itself of course). The fact that a commit is identified indirectly by its content means that a commit with different content is necessarily a different commit. In other words, you cannot change a commit once it is created; commits are immutable. This is relevant for a few things, such as amending (see below) and rebasing.

A commit also remembers its parents. These are the commits that came immediately before it. Usually, a commit has just one parent: when you create a new commit, the last commit you created becomes the new one''s parent. This means commits form a chain (sometimes called a history). In this help book, a chain of commits is visualized like so:

	A---B---C---D

Here, D''s parent is C, C''s parent is B, B''s parent is A, and A has no parents (it is the initial commit in your repository/project).

However, commits can also have more than one parent, in the case of merges:

	        E---F---G
	       /             \
	A---B---C---D---H

Here, E and C both have B as their single parent (B does not know about its children) and H has two parents: D and G. This demonstrates why a group of commits is also called a commit graph.

Loading commits

You can load the contents of a commit into your image by right-clicking a commit and selecting Load it. This will open a changes dialog that prompts you to update your image to the state that was saved in the commit. Once you accept the dialog, your image will reflect the commit. Note however that loading a commit does not have any effect on your commit history or your current branch. Thus, the next time you click the Commit button, the changes dialog will show the reverse of the changes you just loaded into the image.

Amending commits

For advanced users, there is an option to amend your last commit. It is accessible via the dropdown button next to the Commit button. Amending effectively adds changes to the last commit and optionally allows you to alter the commit message as well. However, as discussed above, commits are immutable, so instead of changing the last commit, a new commit is created that then replaces the last one. If you have already pushed your last commit, force pushing is necessary to push the replacement commit, which comes with a few problems, discussed in the linked page.
!
]style[(70 6 52 6 39 14 581 15 87 11 1158 11 43 7 399 17 155 7 31 14 172 31 133 13 463 26 118 4 9 7 462 9 70 8 274 7 283 6 249 5 3 15 97 7 19 14 245 6 140 16 44 5 72 6 294 6 19 13 109),i,,i,,lchangesDialog;,,Hviewing-commits;,,i,,i,,i,,Hcomparing-commits;,,i,,i,,i,,i,,Hfundamentals-about-commits;,,i,,i,,i,,lrebasing;,,i,,lmerging;,,i,,Hloading-commits;,,i,,lchangesDialog;,,lbranching;,,Hamending-commits;,,i,,i,,lpushingAndPulling:pushing;,,lpushingAndPulling:force-pushing;,!' readStream nextChunkText)
			key: #committing;
			shouldStyle: false;
			yourself