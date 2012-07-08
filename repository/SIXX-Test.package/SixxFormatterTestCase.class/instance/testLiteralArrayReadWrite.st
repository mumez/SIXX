tests
testLiteralArrayReadWrite
	"SixxFormatterTestCase debug: #testLiteralArrayReadWrite"
	| sixx1 parsedNode array1 sixx2 array2 |
	sixx1 := SixxContext evaluate: [#(1 2 3) sixxString] 
		formattersBy: [:ord | ord add: (SixxMockLiteralArrayFormatter on: Array)].

	parsedNode := SixxXmlUtil parseXml: sixx1.
	self should: [(SixxXmlUtil attributeAt: SixxConstants current formatterTagName from: parsedNode) = 'SixxMockLiteralArrayFormatter'].

	array1 := SixxContext evaluate: [Object readSixxFrom: sixx1] 
		formattersBy: [:ord | ord add: (SixxMockLiteralArrayFormatter on: Array)]. 

	self should: [array1 = #(1 2 3)].

	sixx2 := SixxContext evaluate: [#(1 2 3) sixxString] 
		formattersBy: [:ord | ord ].

	parsedNode := SixxXmlUtil parseXml: sixx2.
	self should: [(SixxXmlUtil attributeAt: SixxConstants current formatterTagName from: parsedNode) = nil].

	array2 := SixxContext evaluate: [Object readSixxFrom: sixx2] 
		formattersBy: [:ord | ord add: (SixxMockLiteralArrayFormatter on: Array)]. 

	self should: [array2 = #(1 2 3)].