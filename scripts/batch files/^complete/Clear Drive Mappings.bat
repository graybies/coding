@echo off
:: this will check if drives are mapped and if so it will remove them
if exist A:\ (
	net use A: /delete /y
)
if exist B:\ (
	net use B: /delete /y
)
if exist E:\ (
	net use E: /delete /y
)
if exist F:\ (
	net use F: /delete /y
)
if exist G:\ (
	net use G: /delete /y
)
if exist H:\ (
	net use H: /delete /y
)
if exist I:\ (
	net use I: /delete /y
)
if exist J:\ (
	net use J: /delete /y
)
if exist K:\ (
	net use K: /delete /y
)
if exist L:\ (
	net use L: /delete /y
)
if exist M:\ (
	net use M: /delete /y
)
if exist N:\ (
	net use N: /delete /y
)
if exist O:\ (
	net use O: /delete /y
)
if exist P:\ (
	net use P: /delete /y
)
if exist Q:\ (
	net use Q: /delete /y
)
if exist R:\ (
	net use R: /delete /y
)
if exist S:\ (
	net use S: /delete /y
)
if exist T:\ (
	net use T: /delete /y
)
if exist U:\ (
	net use U: /delete /y
)
if exist V:\ (
	net use V: /delete /y
)
if exist W:\ (
	net use W: /delete /y
)
if exist X:\ (
	net use X: /delete /y
)
if exist Y:\ (
	net use Y: /delete /y
)
if exist Z:\ (
	net use Z: /delete /y
)

PAUSE
echo deleted
