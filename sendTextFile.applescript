(* Open Window to Select a Text File *)
set theFile to (choose file with prompt "Select a file to read:")
open for access theFile
set fileContents to (read theFile)
close access theFile

set Wordlist to words of fileContents

tell application "Messages"
	set myid to get id of first service
	
	(* Enter Phone Number or Email of Recipient *)
	set theBuddy to buddy "ADDRESS_HERE" of service id myid
	
	(* Send Each Word as a Message *)
	repeat with aword in Wordlist
		send aword to theBuddy
		delay 0.5
	end repeat
end tell
