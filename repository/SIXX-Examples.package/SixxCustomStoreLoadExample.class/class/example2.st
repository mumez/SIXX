examples
example2
	"SixxCustomStoreLoadExample example2"
	"Reading custom serialization object"
	|  xml inst |
	xml := self example1.
	inst := Object readSixxFrom: xml.
	Transcript cr; show: self name, ' instance is load from XML...'; cr; show: inst.
	^inst

