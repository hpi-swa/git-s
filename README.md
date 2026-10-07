# git/s
[git](https://git-scm.com/) client for Squeak - Version control for objects such as code and files in Squeak.

## Installation instructions

You need [Metacello](//github.com/dalehenrich/metacello-work) first.
Then, use the following snippet to load the Git Browser and all its dependencies:

```smalltalk
Metacello new
  baseline: 'GitS';
  repository: 'github://hpi-swa/git-s:latest-release/src';
  load.
```

## Usage instructions

After installing git/s, you will find a "Git Browser" in the Apps menu. With this tool you can create projects (in-image working copies) that can contain multiple objects, such as packages (code) and other files, called *assets*. Each object is stored at or under a path. When you checkout the Git repository in the file system, an object's path is its relative path in the working copy. From the Git Browser, you can create new commits, synchronize with remote repositories (fetch, pull, push), manage and merge branches, switch between them, and compare different versions. There is also another user interface called the Git Asset Browser. Using it, you can import and edit assets, like images, animations, sounds, texts or blobs.

For details, open the help book on git/s, either via the *More* button in the Git Browser or via the Help Browser (Help > Squeak Help > git/s).
