set theFile to (choose file with prompt "Select a file to read:")
open for access theFile
set fileContents to (read theFile)
close access theFile

set Wordlist to words of fileContents

tell application "Messages"
	set myid to get id of first service
	set theBuddy to buddy "+13176543685" of service id myid
	repeat with aword in Wordlist
		send aword to theBuddy
		delay 0.5
	end repeat
end tell
