# jpdfbookmarks

Copyright (c) 2008 2009 2010 [Flaviano Petrocchi](mailto:flavianopetrocchi@gmail.com)
except where differently indicated in source code.

Copyright © 2020 [Mavaddat](/../../../)

License: GNU General Public License version 3

- [Author's Blog](http://flavianopetrocchi.blogspot.com/)
- [GitHub Repo](https://github.com/mavaddat/jpdfbookmarks)

For licence information read [COPYING](/COPYING) file, read the dependencies section in
this README for the licenses and copyright of the open source libraries used
by this project.

## Table of Contents

1. [DESCRIPTION](#description)
2. [DEPENDENCIES](#dependencies)
3. [HOW TO INSTALL AND UNINSTALL](#how-to-install-and-uninstall)
4. [HOW TO EXECUTE](#how-to-execute)
5. [HOW TO BUILD](#how-to-build)
6. [HOW TO PACKAGE](#how-to-package)
7. [HOW TO HELP](#how-to-help)

## DESCRIPTION

This software allows you to create and edit bookmarks on existing pdf files.

## DEPENDENCIES

This software requires a Java Runtime Environment version 6 or later for
information on how to install one on your system, or to check if you already
have it, go to [Java.com](http://www.java.com) or search your system's software
repositories. It uses the following libraries distributed in the lib folder
which are copyright of their respective authors:

### Apache Commons CLI

[Copyright 2001-2009 The Apache Software Foundation](http://commons.apache.org/cli/)
[Apache License Version 2.0, January 2004](http://www.apache.org/licenses/)

### iText-2.1.7

[Copyright 1999, 2000, 2001, 2002 by Bruno Lowagie.](http://www.lowagie.com/iText/)
[GNU LIBRARY GENERAL PUBLIC LICENSE Version 2 \(or later version\)](http://www.gnu.org/licenses/)

### Bouncy Castle Crypto APIs

[Copyright (c) 2000 - 2009 The Legion Of The Bouncy Castle](http://www.bouncycastle.org)
[Adaptation of the MIT X11 License](http://www.bouncycastle.org/licence.html)

### JPedal

[\(C\) Copyright 1997-2008, IDRsolutions and Contributors.](http://www.jpedal.org)
[GNU Lesser General Public License Version 2.1 \(or later version\)](http://www.gnu.org/licenses/)

[Icons are from the "Tango Desktop Project"](http://tango.freedesktop.org/Tango_Desktop_Project)

## HOW TO INSTALL AND UNINSTALL

I have decided not to provide installers any more, this is because I want to
dedicate more time on development than on deployment, this could change in the
future especially if someone else wants to help maintaining packages for specific
platforms. For the time general purpose archives are distributed with binaries
and scripts for all systems.

Download the zip or tar.gz archive of the latest version from GitHub
(https://github.com/mavaddat/jpdfbookmarks) and extract the folder
jpdfbookmarks-x.x.x to a position on your drive.
Inside that folder you have both the windows executables and the Linux scripts
to launch the application.

IMPORTANT: this software requires a Java Runtime Environment version 6 or later
for information on how to install one on your system, or to check if you already
have it, go to http://www.java.com or search your system's software
repositories.

### Install Uninstall On Linux

You should extract the folder in a path without spaces and check if the scripts
have execution permissions and if they don't use the following command:

```bash
 chmod +x jpdfbookmarks jpdfbookmarks_cli
 chmod +x link_this_in_linux_path.sh link_this_in_linux_path_cli.sh
```

The jpdfbookmarks and jpdfbookmarks_cli scripts are intended to be used from the
installation folder, so supposing you have extracted the folder to
/home/user/jpdfbookmarks and you are working in the folder /home/user/documents
you can launch the program with the full path to the script
/home/user/jpdfbookmarks/jpdfbookmarks --help

This is not particularly efficient so I suggest to create links to start the
program in a folder on your PATH environment variable like /usr/local/bin for
example with the root commands:

```bash
cd /usr/local/bin
ln -s /home/user/jpdfbookmarks/link_this_in_linux_path.sh jpdfbookmarks
```

or

```bash
ln -s /home/user/jpdfbookmarks/link_this_in_linux_path_cli.sh jpdfbookmarks_cli
```

Now you are able to run jpdfbookmarks from any position just typing jpdfbookmars
or to create a launcher icon in any desktop easily.
The only difference between the *_cli (command-line-interface) version and the
other script is that the cli version does not use a splash screen so it's more
tailored to be used inside a terminal, choose what you prefer to link.

To uninstall on linux just delete the extracted folder and delete the link in
the PATH folder if you created it with the command:

$rm /usr/local/bin/jpdfbookmarks

### Install Uninstall On Windows

To launch the graphical user interface of the program on Windows double click
jpdfbookmarks.exe, the program can take the pdf file to open as an argument to
facilitate shell integration. To use the program on the command-line use the
other executable jpdfbookmarks_cli.exe, if you use often the command prompt I
suggest you to add the jpdfbookmarks-x.x.x folder to the PATH environment
variable, you can easily find instructions on how to accomplish this on the web.

To uninstall just delete the extracted folder and cancel the path to the same
folder from the PATH environment variable if you added it.

### Install Uninstall Universal

For all the systems you can launch the program after you have extracted the
folder with:

```bash
 java -jar /full/path/jpdfbookmarks/jpdfbookmarks.jar
```

it's important to provide the full path to the jpdfbookmarks.jar file.

On many systems also double clicking on jpdfbookmarks.jar will work to launch
the application.

## HOW TO EXECUTE

Here follows a short help on the jpdfbookmarks parameters.

```cmd
usage: jpdfbookmarks [--dump | --apply <bookmarks.txt> --out <output.pdf> |
                     --help | --version] [input.pdf]
```

To launch the graphic interface invoke without parameters or pass a pdf file you
want as parameter. On Windows the command line program must be called with
jpdfbookmarks_cli.exe while the graphic interface must be called with
jpdfbookmarks.exe.

| Parameter (-‍brev,-‍-‍longform) | Description |
|-|-|
| -a,--apply | Apply bookmarks from the file bookmarks.txt to a pdf file passed as argument and save it to a new pdf file specified with --out output.pdf. |
| -d,--dump | Extract bookmarks from a PDF file passed as argument and print them to standard output. |
| -h,--help | Print this message. |
| -i,--indentation | String to use as indentation string (default valueis the tab character) , must be different from the title and page number separator (default value '/') and from the attributes separator (default value ','). |
| -o,--out | Output PDF file --out file.pdf or -o file.pdf. Use with the --apply option. |
| -p,--page-sep | String to be use between title and page number (default value is '/'), must be different from attributes separator (default value ',') and from indentation string (default value is the tab character). |
| -t,--attributes-sep | String to be use between the bookmark attributes (default value is ','), must be different from the title and page number separator (default value '/') and from indentation string (default value is the tab character). |
| -v,--version | Version number. |

In the bookmarks.txt file each line is a bookmark and the hierarchy is made by
tab characters &Tab; (not spaces),in the format <Title of bookmark/target
page[,FitType,TopOffset,LeftOffset] like the following example:
Chapter 1/23
&Tab;Para 1.1/25,FitWidth,96
&Tab;&Tab;Para 1.1.1/26,FitHeight,43
Chapter 2/30,TopLeft,120,42
&Tab;Para 2.1/32,FitPage.
It is also possible to use an extended format to specify the text style, the
color and the open or close state of the bookmark, like the following example:
Para 1.1/25,Red,bold,italic,open,FitWidth,96 or
Para 1.1/25,Green,noBold,noItalic,closed,FitWidth,96

## HOW TO BUILD

My development environment is the JDK 6, I use the [VS Code](../../microsoft/vscode) version 1.52 but you can build jpdfbookmarks on the command line using ant if you prefer.
VS Code has very good git integration if you use this IDE I recommend
it, otherwise download an appropriate git client for your system, I will
first guide you to build the program in VS Code and then on the command line.

From the VS Code menu choose "View ➡ Command Pallet ➡ Git ➡ Clone" and on the dialog
the repository URL to enter is:

`https://github.com/mavaddat/jpdfbookmarks.git`

click next and you will get to the following another panel, choose trunk as the
repository folder and check "Skip "trunk" and checkout only its content", choose
the local folder, for example:

C:\Users\username\Documents\VS CodeProjects\jpdfbookmarks

and check "Scan for VS Code Projects after Checkout", then click Finish.
Wait for the download to finish and then you will get a message box, click on
"Open Project ..." and on the opened dialog select the project
jpdfbookmarks_core, check "Open Required" and click Open.

Run the project in VS Code with F5 key or with the appropriate Run menu item.

If you prefer using the command line download the current source with the
command:

 ```bash
 git clone https://github.com/mavaddat/jpdfbookmarks.git
```

enter the directory containing the main project with:

 ```bash
 cd jpdfbookmarks/jpdfbookmarks_core
```

build the project with:

 ```bash
 ant jar
```

execute the program with:

 ```bash
 java -jar dist/jpdfbookmarks.jar
```

## HOW TO PACKAGE

I have decided not to provide installers for jpdfbookmarks but only archives
containing binaries, the reason is that I prefer spending my time programming
and solving bugs on the code, creating installers for different platforms is
not an easy task and I hope someone will offer his help to create state of the
art packages for specific systems.

To create the archives there are two scripts in the Packaging folder,
packager.bat if you are in Windows, and packager.sh if you are on Linux.

### Packaging On Windows

The packager.bat batch script depends on 7zip software to create the archives,
you must modify the script to use it on your system, find the line:

SET PATH7ZIP="D:\LiberKey\Apps\7Zip\App\7-Zip"

and substitute the path with the 7zip installation folder on your system, than
simply run the batch file after you have built jpdfbookmarks to create the
zip and tar.gz archives.

### Packaging On Linux

Run the packager.sh script with:

```bash
 sh packager.sh
```

## HOW TO HELP

There are really many ways to help a small GPL project like this, here I give
some hints but feel free to offer any other idea you have.

- [report bugs](/issues);
- correct bugs submitting [pull requests](/pull);
- write documentation or tutorials;
- write translations of the program or of the documentation;
- create better icons;
- suggest new features;
- create Installers;
...

For more instructions and information go to [my blog](http://flavianopetrocchi.blogspot.com/)or to [GitHub](https://github.com/mavaddat/jpdfbookmarks) please post your comments and bug
reports.

I hope this will help you getting your job done, let me know.
