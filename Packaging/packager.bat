@echo off

REM
REM packager.bat
REM 
REM Copyright (c) 2010 Flaviano Petrocchi <flavianopetrocchi at gmail.com>.
REM All rights reserved.
REM 
REM This file is part of JPdfBookmarks.
REM 
REM JPdfBookmarks is free software: you can redistribute it and/or modify
REM it under the terms of the GNU General Public License as published by
REM the Free Software Foundation, either version 3 of the License, or
REM (at your option) any later version.
REM 
REM JPdfBookmarks is distributed in the hope that it will be useful,
REM but WITHOUT ANY WARRANTY; without even the implied warranty of
REM MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM GNU General Public License for more details.
REM 
REM You should have received a copy of the GNU General Public License
REM along with JPdfBookmarks.  If not, see <http://www.gnu.org/licenses/>.
REM

SET BATDIR=%~dp0
PUSHD %BATDIR%

REM Customize this path as needed to point to 7zip folder
SET PATH7ZIP="D:\LiberKey\Apps\7Zip\App\7-Zip"
SET PATH=%PATH7ZIP%;%PATH%

SET /p VERSION=<..\VERSION
SET NAME=jpdfbookmarks-%VERSION%

IF EXIST %NAME% del /Q %NAME% & rmdir /S /Q %NAME%
IF EXIST %NAME%.zip del /Q %NAME%.zip
IF EXIST %NAME%.tar del /Q %NAME%.tar
IF EXIST %NAME%.tar.gz del /Q %NAME%.tar.gz

mkdir %NAME%
copy jpdfbookmarks.exe %NAME%
copy jpdfbookmarks_cli.exe %NAME%
copy link_this_in_linux_path.sh %NAME%
copy link_this_in_linux_path_cli.sh %NAME%
copy ..\jpdfbookmarks_core\dist\jpdfbookmarks.jar %NAME%
copy ..\README %NAME%
copy ..\COPYING %NAME%
copy ..\VERSION %NAME%
mkdir %NAME%\lib
copy ..\jpdfbookmarks_core\dist\lib %NAME%\lib

7z a -tzip %NAME%.zip %NAME%

7z a -ttar %NAME%.tar %NAME%
7z a -tbzip2 %NAME%.tar.gz %NAME%.tar

del /Q %NAME%.tar
del /Q %NAME%
rmdir /S /Q %NAME%

POPD
