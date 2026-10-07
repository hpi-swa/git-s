pages
pushingAndPulling
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #pushingAndPulling"
	<generated>
	^(HelpTopic
		title: 'Pushing and pulling'
		contents: 
'To share your commits with others and work on theirs, you can push and pull, respectively, to transfer commits and branches. Both require a remote, which is separate instance of git, usually a server such as GitHub. When you start your project by cloning, a remote named origin is already set up.

Managing remotes

You can add, edit, and remove remotes by right-clicking any ref in the ref tree and selecting Manage remotes.

Upstream branches

Each local branch optionally has an upstream branch (and upstream remote): the remote branch that it pushes to and pulls from by default. Usually, this is the remote branch with the same name on the remote origin, so the upstream branch of the local branch main would be the remote branch origin/main. However, you are free to configure the upstream branch differently. To change or remove a branch''s upstream branch you can right-click it and select Advanced > (Un)Set its upstream branch. When you push or pull for the first time, git/s will offer to set the upstream branch for you.

Pushing

To push to an upstream branch, first ensure that you are on the branch that you want to push. Then, click the Push button. Pushing will transfer the commits from your local branch to the remote and will try to update the branch on the remote to point to the same commit as your local branch. The latter may fail, because pushes can run into the same three scenarios that merging can, but pushes do not do proper merges; they only accept fast-forwarding updates. Thus, if you try to do a non-fast-forwarding push, a warning will pop up that tells you so. In this scenario, the remote has commits that you don''t have yet, so you should consider pulling first.

Force pushing

In case you are sure that you want to discard the commits on the remote, you can force push. If you just tried to push regularly and the warning popped up, you can choose Proceed to do a force push. Otherwise, the dropdown of the Push button also has an option to force push.

Note that force pushing can cause problems for others that have already pulled the commits you discarded from the remote. They may have already based work on them and need to then handle the situation somehow. One option for them is to rebase their work onto your newly force-pushed commits.

Pulling and fetching

To pull, first ensure that you are on the branch that you want to pull (into). Then, click the Pull button.

Pulling is almost the reverse of pushing, except that it is a two-step process:
 1. fetch the remote, updating the upstream branch
 2. merge the upstream branch into the local branch

Fetching is the process of transferring new commits from the remote to the local repository and updating remote branches to match the state of the branches on the remote. Thus, when you fetch from origin, the remote branch origin/main will be updated. The second step is to merge origin/main into the local branch main. Since pulling involves merging, the same three scenarios apply to it, including the possibility of conflicts which you have to resolve.

You can also manually fetch without pulling using the button Fetch all located below the refs tree. This button will fetch from all configured remotes. Manually fetching can be useful for using alternative strategies of integrating the fetched changes into your local branch. For example, you can rebase main onto origin/main instead of merging.

Pushing and fetching using external git

git/s only implements pushing and fetching (pulling) via HTTPS. However, there is a preference to automatically use the external git commandline tool to push and fetch (merging is still done by git/s). You can use this option to do networking via different protocols, such as SSH. git/s will offer to enable the preference when it detects that you are trying to use a protocol other than HTTPS. It will also offer to enable it when its own implementation fails repeatedly.
!
]style[(62 4 5 4 65 6 125 6 21 16 96 14 3 17 38 16 5 15 379 8 3 27 98 7 112 4 257 7 281 13 83 10 80 7 52 4 279 6 51 20 97 4 94 5 46 5 562 9 227 6 44 39 84 12 379),i,,i,,i,,i,,Hmanaging-remotes;,,i,,Hupstream-branches;,,i,,i,,i,,i,,Hpushing;,,i,,lmerging;,,Hforce-pushing;,,i,,i,,i,,lrebasing;,,Hpulling-and-fetching;,,i,,i,,lmerging;,,i,,lrebasing;,,Hpushing-and-fetching-using-external-git;,,Rcode://(Preferences pragmaPreferenceFor: GitFeatureFlags getter: #externalFetchAndPush) open;,!' readStream nextChunkText)
			key: #pushingAndPulling;
			shouldStyle: false;
			yourself