# Ace Invaders
A ridiculous game about shooting things as other things.<br>
<br>

## Installation
As of present, we do not have a license for GameMaker: Studio 2.<br>
To compile and build the current versions of Ace Invaders, you must install GameMaker: Studio 2.<br>
Download one of the `.yyz` files (or the current source code) and open with GameMaker: Studio 2.<br>
The project should open. You can press the "run" button, or press F5 on your keyboard.<br>
Ace Invaders should compile. If you encounter a runtime error or bug while playing, refer to the "I've spotted a bug!" in this README.
### System requirements
Note - if you are compiling the source code directly with GameMaker: Studio 2, then you should consult its [minimum requirements](https://help.yoyogames.com/hc/en-us/articles/360002406417-Technical-Setup-Info#System%20Requirements).<br>
These are not properly tested but rather calculated by measuring utilisation from Task Manager. It may not be fully accurate, however, relatively soon, this will be slightly more accurate.<br>
<br>
* RAM - 64 MB
* CPU - Intel Core 2 Duo E8400 or equivalent
* GPU - GeForce 6600 GT or equivalent
* Storage - 1 MB avaliable

These may (read: will) increase over time as Ace Invaders' development goes on.<br>

### For Linux users
Unfortunately, GameMaker: Studio 2 does not have native support for Linux. However, Wine 4.10 (older versions will not work!) will be able to run GameMaker: Studio 2.<br>
GameMaker: Studio only allows the compiling of a game to Ubuntu and Ubuntu-based distros (such as Mint, Pop!_OS, etc.)
YoYo Games does not officially support Arch, Fedora, or any other non-Ubuntu-based distro.
Before running, you will need to install two dependencies: `libcurl4` and `libopenal1`. If you do not have these then Ace Invaders will not be able to run.
## Contribution
Because Ace Invaders is an open-source game, you may contribute to it. What you need to contribute to it is:
#### Git
[**Install (GitHub Desktop)**](https://desktop.github.com/) | [**(Git Bash)**](https://git-scm.com/downloads)<br>
You can use any Git application, but we recommend either GitHub Desktop or Git Bash for their ease of use.<br>
Git is the source control management software for GitHub, and thus Ace Invaders. To be able to pull Ace Invaders to your computer and push it back to GitHub, you must use Git.<br>
**Do not use GameMaker: Studio 2's built-in source control!**

#### GameMaker: Studio 2
[**Install**](https://accounts.yoyogames.com/downloads)<br>
GameMaker: Studio 2 is the software that is used to develop Ace Invaders.<br>
Please note you will need a YoYo Games account to download it.<br>
It is, in theory, possible to develop without GameMaker: Studio 2, but you will not be able to access some features like sprite editing or testing if you use a standard code editor or IDE (such as Visual Studio Code).
<br>
Please pull the repo to your PC first before making edits locally, and then push to the main repo once done.<br>
If a merge conflict rises, please independently resolve it with the branch you wish to merge to. If the two branches cannot be resolved properly, the older branch will take priority.<br>

### OK, but how do I pull the repo to my computer?
There's quite a few ways, and the README cannot cover all of them.<br>
Here's some resources depending on your Git application.<br>
[**GitHub Desktop**](https://docs.github.com/en/desktop/contributing-and-collaborating-using-github-desktop/adding-and-cloning-repositories/cloning-a-repository-from-github-to-github-desktop)<br>
[**Git Bash**](https://github.com/git-guides/git-clone)<br>
If your program is not listed, you can search the web for it.

### For Linux users
[**Installation guide (Windows on Wine)**](https://forum.gamemaker.io/index.php?threads/run-the-gms2-ide-on-ubuntu-19-04.64330/)<br>
<<br>
You can download the Windows version of GameMaker: Studio 2. You will need Wine 4.10 (otherwise it will not work) installed to run GameMaker: Studio 2 for Windows.<br>
Alternatively, you can install a version of GameMaker: Studio 2 that runs natively on Ubuntu. Keep in mind that it is still in beta and that bugs may appear.<br>
If you use Arch btw, Fedora, or any other non-Ubuntu based distro, then unfortunately you will not be able to get GameMaker: Studio 2 to run. [You can try this](https://forum.gamemaker.io/index.php?threads/running-gms2-beta-on-arch-linux-and-possibly-other-distros-too.88092/), but keep in mind that it is not supported by YoYo Games and is highly unstable.

### Contributing
There are a few things you can do to contribute to Ace Invaders.

#### I just want to translate.
You can edit the `.csv` file containing all the translations. Download it, edit it, and then push it back to here.<br>
File path is `(working dir)/AceInvaders/datafiles/localisation.csv`. Do not change the `.ttf`, it's a font.<br>
Please open the file in a plaintext editor. It seems to break down in fancy editors like Excel. Google Sheets seems to work, however, but the process to open the `.csv` is slower than just opening it in Notepad (or your preferred plaintext editor).<br>
If there is a translation error then you should fix it.

#### I can do art. How can I help?
Like with translation, you don't need to necessarily know how to program to contribute to Ace Invaders.<br>
You can simply draw pixel art in your pixel art program of choice.<br>
**Please use the colour palette!** If you need it, daysant will provide it for you.<br>
If you do not use it, your art will have their colours reduced down to it.

#### I can program for the game.
Of course, programming is the main work required in Ace Invaders.<br>
Programming help would be greatly appreciated.<br>
Ace Invaders is developed in GameMaker Language. Use that for programming.<br>

#### Need music?
Music composition and SFX are needed for the auditory section of a game.
Composing music is another way you can contribute.<br>
Please remember that this is a "retro" game, so please use chiptune music (such as the buzzing noises in older (~ <1990) games)

#### I can't do any of these, but I still want to help.
If you can't do any of these, there are few things you can do.<br>
Many people do not realise it, but sharing a game is extremely helpful, especially in indie titles like Ace Invaders.<br>
Spread the word of this if you can!<br>
<br>
If you can do a mix of these, that would also be helpful to development, but no pressure.

### I've spotted a bug!
We allow you to report and fix bugs using the Issues tab on our GitHub page.<br>
Please mark all issues with "unevaluated" when submitting your report, otherwise it will be reported as invalid.<br>
Note that all issues cannot be fixed in an update, but we will try our best to fix them.

### I have an idea!
You can suggest ideas either by adding them in directly in a pull request, or through the Issues tab.<br>
Note that the terminology in the tags will refer to the issue not being in Ace Invaders as a bug.<br>
For example, "fixing" means adding, "working" means it's already added, etc.<br>

## Credits
[@daysantace](https://github.com/daysantace) - Designer, programmer, artist, composer
