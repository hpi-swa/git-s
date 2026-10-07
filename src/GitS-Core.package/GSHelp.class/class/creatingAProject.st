pages
creatingAProject
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #creatingAProject"
	<generated>
	^(HelpTopic
		title: 'Creating a project'
		contents: 
'To create a project, open a Git Browser in the Apps menu, if you haven''t yet, and right click in the upper left panel (if you have no projects yet, it should say Right click here to add a project). In the submenu Add project, you have three options:
  1. Clone: download an existing project from the internet (such as GitHub)
  2. New on disk: create an empty project on your disk
  3. Existing from disk: add an existing git repository on your disk to git/s

In each case, a wizard (series of popups) will guide you through the next steps. Depending on the option you chose, it will ask you for an URL to clone from, a directory to store the repository in, and a name for the project.

After the project has been created, git/s will load its contents (if any) into the image. A changes dialog will pop up that shows the changes to load. Once you are happy with them, you can click Load changes.

If this is a new project, you can start by tracking code and assets. Then you can start working on your project and commit when you''re ready.
!
]style[(28 11 123 33 18 11 555 14 89 12 46 13 5 6 49 6 20),Rcode://GSBrowser open;,,i,,i,,lchangesDialog;,,i,,ltrackingCode;,,ltrackingAssets;,,lcommitting;,!' readStream nextChunkText)
			key: #creatingAProject;
			shouldStyle: false;
			yourself