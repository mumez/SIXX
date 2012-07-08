examples
example4
	"SixxCustomStoreLoadExample example4"
	"Reading custom serialization object"
	| xml cls |
	xml := self example3.
	self instances: nil. "class instances variable is set to nil"
	cls := self readSixxFrom: xml.
	Transcript cr; show: self name, ' cls instance is load from XML...'; cr; show: cls.
	^self instances inspect. "now class instances variable has been set"

