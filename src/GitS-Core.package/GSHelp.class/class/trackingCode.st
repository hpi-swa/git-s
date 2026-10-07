pages
trackingCode
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #trackingCode"
	<generated>
	^(HelpTopic
		title: 'Tracking code'
		contents: 
'git/s tracks code in packages. To add a new package or remove an already-tracked package, right click the project and choose Manage its packages.

On the left side, you will now see all class categories that are in the system, but not yet tracked by the current project. On the right side, the tracked packages (class categories) are shown. Both lists can be filtered by typing into them. On the bottom, there are four buttons, their actions are described below. Note that while the actions you perform are saved automatically, you still have to commit them manually.

Adding packages

Once you selected a class category on the left, you can click Add package. If this is your first package, the package browser will ask you for an encoding: Cypress or Tonel. The main difference is that Cypress stores each method in a separate file, while Tonel uses one file per class. If this is not your first package (and you don''t use different encodings for different packages), the package browser will simply choose the already-used encoding.

Editing package paths

When adding a package, the package browser chooses a location (path) within the repository to store it. By default, it will choose /src/package-name (with a .package extension for Cypress), but if there are existing packages, it will choose the common prefix of the packages'' paths. You can manually adjust this package path by clicking Edit package path after selecting a tracked package. Note that a changed package path will occur in the commit dialog as a full removal and re-addition of the package (this is simpler to implement). It is thus recommended to commit such a change separately from code changes.

Changing package encoding

Similarly to the package paths, you can change a package''s encoding using the Change package encoding. Note that the same removal-and-re-addition quirk applies here, too.

Removing packages

You can remove packages by clicking Remove package. This will untrack the package and remove its code from the repository, but it will leave the code in the image.
!
]style[(125 19 363 5 34 6 17 15 64 11 378 21 339 17 260 25 80 23 71 17 38 14 114),i,,i,,ilcommitting;,,Hadding-packages;,,i,,Hediting-package-paths;,,i,,Hchanging-package-encoding;,,i,,Hremoving-packages;,,i,!' readStream nextChunkText)
			key: #trackingCode;
			shouldStyle: false;
			yourself