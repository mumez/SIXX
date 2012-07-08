tests
testReadSixxWriteValueAndSixxReadValue
	"self debug: #testReadSixxWriteValueAndSixxReadValue"

	| object now sixx parsedNode readObject |
	object := SixxMockCustomWriteObject new.
	object name: 'This is a test'.
	now := Time fromSeconds: Time now asSeconds.
	object time: now.
	sixx := object sixxString.
	parsedNode := SixxXmlUtil parseXml: sixx.
	self shouldnt: [(SixxXmlUtil attributeAt: 'sixx.type' from: parsedNode) = 'SixxMockCustomWriteObject'].
	self should: [(SixxXmlUtil attributeAt: 'sixx.type' from: parsedNode) = 'SixxMockMementoArray'].

	readObject := Object readSixxFrom: sixx.
	self shouldnt: [readObject class = SixxMockMementoArray].
	self should: [readObject class = SixxMockCustomWriteObject].

	self should: [readObject name = 'This is a test'].	
	self should: [readObject time = now]
