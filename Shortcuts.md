 # Global shortcut keys

The global shortcut keys of ClashX are implemented by supporting AppleScript and calling AppleScript from the system's Automator program.

ClashX currently only supports AppleScript for the following functions
1. Turn on (off) the system proxy
2. Switch outbound mode



## usable AppleScript 

You can select the AppleScript code you need here to create the shortcut keys you need.
**The following sample code is a ClashX program. If you are using ClashX Pro then replace ClashX with ClashX Pro**

---

Turn on (off) the system proxy

`tell application "ClashX" to toggleProxy`

Switch outbound mode to global proxy

`tell application "ClashX" to proxyMode 'global'`

Switch outbound mode to direct connection

`tell application "ClashX" to proxyMode 'direct'`

Switch outbound mode to rule proxy

`tell application "ClashX" to proxyMode 'rule'`
## Known bugs

1. The shortcut keys cannot be used directly on the desktop, you need to enter any program to activate the shortcut keys
   
2. The first time you activate the shortcut key in any program, you must click once to confirm the authorization to activate the shortcut key