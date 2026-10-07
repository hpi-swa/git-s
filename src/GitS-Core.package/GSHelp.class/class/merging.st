pages
merging
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #merging"
	<generated>
	^(HelpTopic
		title: 'Merging'
		contents: 
'To combine commits and changes of two branches into one, you can merge a branch into another. To merge a branch, say ''topic'', into another branch, say ''main'', first ensure that you are on branch main. Then, right-click on branch topic and select Merge it into branch ''main''. There are three scenarios that can happen now:

Scenario 1: branch topic has commits that main doesn''t have, but topic has all of mains''s commits

	                   main
	                      v
	A---B---C---D---E---F---G < topic

git/s will handle this scenario using a fast-forward: main will simply be updated such that its tip is the same as topics''s tip, thus adopting all new commits from topic. No new commit is created. A changes dialog still pops up, but only to load the changes from the new commits. After accepting those, the commit graph looks like this:

	A---B---C---D---E---F---G < main, topic

Scenario 2: branch main has commits that topic doesn''t have, but main has all of topic''s commits

	                   topic
	                      v
	A---B---C---D---E---F---G < main

This scenario is simple: there is nothing to do because main cannot receive new commits from topic. So a popup informs you that you are Already up to date. No commit is created, no changes dialog pops up, and the graph looks the same as before.

Scenario 3: both branches have commits that the other one doesn''t have

	        E---F---G < topic
	       /
	A---B---C---D < main

This scenario is the interesting case and what would normally be called an true merge. Because commits are there to represent the all versions of your code and files in one place and neither main''s tip nor topic''s tip has the all versions (one may have some newer versions of some files, while the other has newer versions of some methods), we need to create a new commit: the merge commit. After you succeed in merging, the graph looks like this:

	        E---F---G < topic
	       /             \
	A---B---C---D---H < main

To achieve this, we need to merge the two sets of code and file versions from both branches into one set of versions. git/s does most of the work here, but there can be situations where it is not obvious what the merged version should look like. For example, you might change a method on the topic branch, but the main branch has since deleted the method. Should the merge commit contain the modified method or should the modification be discarded by deleting the method? These situations are called merge conflicts and they require you to resolve them. Thus, a changes dialog pops up. The popup allows you to change the merge commit message from a generated one and requires you to resolve conflicts, if any. Once you accepted the merge dialog, the merge commit will appear in the commit list.
!
]style[(65 5 176 27 275 12 648 18 299 10 292 12 638 15 47 14 107 17 95),i,,i,,i,,i,,i,,i,,i,,lchangesDialog;,,lchangesDialog:merge-conflicts;,!' readStream nextChunkText)
			key: #merging;
			shouldStyle: false;
			yourself