pages
trackingAssets
	"This method was automatically generated. Edit it using:"
	"GSHelp edit: #trackingAssets"
	<generated>
	^(HelpTopic
		title: 'Tracking assets'
		contents: 
'git/s can track various kinds of assets for you:
 - images (BMP, GIF, JPEG, PCX, PNG, PNM, XBM)
 - animations (GIF)
 - sounds (AIFF, WAV)
 - plaintext (UTF-8)
 - any binary data

To get started, open the Git Asset Browser via the Apps menu or by right-clicking a project and selecting Manage its assets.

Tracked and inferred assets

The Asset Browser will show you all assets in your project. This includes every file that is not associated with a tracked code package. This also means that git/s will show you assets that are in the repository, but which you have never explicitly added to git/s. These assets are called inferred (as opposed to tracked) and show up in italics. The difference between tracked and inferred assets is that only tracked assets are exported to a SAR and accordingly only tracked assets can be used from code (otherwise, accidental usage of inferred assets could lead to code working in the development image, but not after importing an exported SAR). With an asset selected, you can toggle it from inferred to tracked and back using the button Mark asset tracked/inferred.

Viewing and editing assets

Assets that have special support in git/s (see the list at the top) are shown with an appropriate representation in the top right (images will be shown as Forms, sounds can be played, etc.). Other files are treated as binary data and are shown as a large ByteArray. You can use the bottom right workspace pane to make edits to the selected asset. For plaintext assets, you can also directly edit the text in the top right and then save it using ctrl/cmd+s.

Importing assets

You can import files and directories from your disk into the project via the respective buttons. git/s will walk directories recursively and import each file found. It will infer the type of the file(s) and ask you for a path to store the assets in the repository. Note that imported assets still need to committed from the Git Browser.

Using assets from code

You can use the GitAssetLoader class to access assets in your projects. Note that you can only access tracked assets (see above). Example code:

	| assetLoader form sound |
	assetLoader := GitAssetLoader for: ''MyProjectName''.
	form := assetLoader loadForm: ''image.png''. "loads /image.png"
	"you can add a basePath to the GitAssetLoader:"
	assetLoader basePath: ''assets''.
	sound := assetLoader loadSound: ''jingle.wav''. "loads /assets/jingle.wav"
	"you can also set the basePath with a constructor:"
	assetLoader := GitAssetLoader for: ''MyProjectName'' basePath: ''assets''.

Generally, you should use the load* helper method that corresponds to the asset you are trying to load:
 - loadForm: for images
 - loadAnimatedImageMorph: or loadGIFReadWriter: for animations
 - loadSound: for sounds
 - loadString: for plaintext
 - loadByteArray: for binary data

In case you should need to access the raw byte contents of an asset file, you can use loadRawAssetBytes:.
!
]style[(204 17 64 17 3 27 291 8 16 7 421 27 3 26 460 16 340 22 960),Rcode://GSAssetBrowser open;,,i,,Htracked-and-inferred-assets;,,i,,i,,i,,Hviewing-and-editing-assets;,,Himporting-assets;,,Husing-assets-from-code;,!' readStream nextChunkText)
			key: #trackingAssets;
			shouldStyle: false;
			yourself