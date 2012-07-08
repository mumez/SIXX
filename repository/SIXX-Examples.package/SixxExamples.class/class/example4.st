examples
example4
	"SixxExamples example4"
	"Save and load Preferences data"
	
	| preferences |
	preferences := Preferences allPreferenceObjects sixxString.
	preferences := Object readSixxFrom: preferences.
	^preferences inspect.

	

