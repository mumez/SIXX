examples
example3
	"SixxCustomStoreLoadExample example3"
	"Writing custom serialization class object"
	| cls xml |
	cls := SixxCustomStoreLoadExample.
	xml := cls sixxString.
	Transcript cr; show: self name, ' class instance sixx is...'; cr; show: xml.
	^xml

