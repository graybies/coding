@echo off
echo -----------------
echo USERNAME = %USERNAME%
echo -----------------
PAUSE
if exist "\\dreyer-wa\dfs\Home\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\Home\%USERNAME%
) else if exist "\\dreyer-wa\dfs\HomeFldr\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\HomeFldr\%USERNAME%
) else if exist "\\dreyer-wa\dfs\HomeFolders1\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\HomeFolders1\%USERNAME%
) else if exist "\\dreyer-wa\dfs\HomeFolders2\%USERNAME%" (
	set docs=\\dreyer-wa\dfs\HomeFolders2\%USERNAME%
)
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