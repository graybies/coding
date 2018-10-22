@echo off
:: show the user currently logged in
echo -----------------
echo USERNAME = %USERNAME%
echo -----------------
PAUSE
:: Checks the S drive, clears it if its being used, and maps EpicSmart
if exist S:\ (
	net use S: /delete /y
	net use S: \\dreyer-wa\dfs\EpicSmart
) else (
	net use S: \\dreyer-wa\dfs\EpicSmart
)
:: Checks the W drive, clears it if its being used, and maps Sharing
if exist W:\ (
	net use W: /delete /y
	net use W: \\dreyer-wa\dfs\sharing
) else (
	net use W: \\dreyer-wa\dfs\sharing
)
:: Checks the V drive, clears it if its being used, and maps Support
if exist V:\ (
	net use V: /delete /y
	net use V: \\dreyer-wa\dfs\Support
) else (
	net use V: \\dreyer-wa\dfs\Support
)	
:: searches the homefolders for users my documents folder
if exist "\\dreyer-wa\dfs\Home\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\Home\%USERNAME%
) else if exist "\\dreyer-wa\dfs\HomeFldr\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\HomeFldr\%USERNAME%
) else if exist "\\dreyer-wa\dfs\HomeFolders1\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\HomeFolders1\%USERNAME%
) else if exist "\\dreyer-wa\dfs\HomeFolders2\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\HomeFolders2\%USERNAME%
)
:: lists the full path found
::echo.
::echo %docs%
::echo. 
::PAUSE
::echo.
:: Checks the X drive, clears it if its being used, and maps My Documents
if exist X:\ (
	net use X: /delete /y
	net use X: %docs%\Documents
	echo My Documents Mapped
	echo.
) else (
	net use X: %docs%\Documents
	echo My Documents mapped
	echo.
)
PAUSE
exit