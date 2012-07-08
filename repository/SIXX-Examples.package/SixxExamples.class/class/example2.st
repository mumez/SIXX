examples
example2
	"SixxExamples example2"
	"Read a SIXX string and restore an instance (like #readFrom:)"
	
	| xmlString obj |
	xmlString := SixxExamples example1.
	obj := Object readSixxFrom: xmlString.
	obj inspect. 