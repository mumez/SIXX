examples
example1
	"SixxCustomStoreLoadExample example1"
	"Writing custom serialization object"
	| inst xml |
	inst := SixxCustomStoreLoadExample random.
	xml := inst sixxString.
	Transcript cr; show: self name, ' instance sixx is...'; cr; show: xml.
	^xml

