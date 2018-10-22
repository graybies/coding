@echo off
:start
SET /P _advOneId= Advocate One ID:
echo.
echo You have entered: %_advOneId%. 
echo.
:choice
SET /P c=Is this correct[Y/n]?
echo.
if /I "%c%" EQU "Y" goto :forward
if /I "%c%" EQU "n" goto :restart
if /I "%c%" EQU "" goto :forward
goto :choice
:forward
if exist "\\dreyer-wa\dfs\Home\%_advOneId%\" (
	echo \\dreyer-wa\dfs\Home\%_advOneId%\
	echo.
	set docs=\\dreyer-wa\dfs\Home\%_advOneId%
) else if exist "\\dreyer-wa\dfs\HomeFldr\%_advOneId%\" (
	echo \\dreyer-wa\dfs\HomeFldr\%_advOneId%\
	echo.
	set docs=\\dreyer-wa\dfs\HomeFldr\%_advOneId%
) else if exist "\\dreyer-wa\dfs\HomeFolders1\%_advOneId%\" (
	echo \\dreyer-wa\dfs\HomeFolders1\%_advOneId%\
	echo.
	set docs=\\dreyer-wa\dfs\Homefolders1\%_advOneId%
) else if exist "\\dreyer-wa\dfs\HomeFolders2\%_advOneId%\" (
	echo \\dreyer-wa\dfs\HomeFolders2\%_advOneId%\
	echo.
	set docs=\\dreyer-wa\dfs\Homefolders2\%_advOneId%
)
%SystemRoot%\explorer.exe "%docs%\Documents"
SLEEP 5
exit
:restart
goto :start