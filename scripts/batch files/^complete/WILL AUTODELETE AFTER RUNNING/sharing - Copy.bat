@echo off
REM removes mapped drives 

if exist W:\ (	
	net use W: /delete /n
)
REM maps the EpicSmart, Sharing, and Support folders

net use W: \\dreyer-wa\dfs\sharing 


(goto) 2>nul & del "%~f0"