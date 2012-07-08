tests
testSharedSixxWriteValueAndSixxReadValue
	"SixxCustomObjectSerializationTestCase debug: #testSharedSixxWriteValueAndSixxReadValue"
	| object1 now1 object2 now2 parsedNode array sixx readArray inArray readObject1 readObject2 |
	object1 := SixxMockCustomWriteObject new.
	object1 name: 'This is a test'.
	now1 := Time fromSeconds: Time now asSeconds..
	object1 time: now1.

	object2 := SixxMockCustomWriteObject new.
	object2 name: 'This is a test2'.
	now2 := Time fromSeconds: now1 asSeconds + 10.
	object2 time: now2.
	
	parsedNode := SixxXmlUtil parseXml: object1 sixxString.
	self should: [(SixxXmlUtil attributeAt: 'sixx.type' from: parsedNode) = 'SixxMockMementoArray'].

	array := Array with: object1 with: object2 with: (Array with: object1 with: object2 with: 3).
	sixx := array sixxString.
	readArray := Object readSixxFrom: sixx.
	inArray := readArray at: 3.

	self should: [(readArray at: 1) = (inArray at: 1)].
	self should: [(readArray at: 2) = (inArray at: 2)].
	self shouldnt: [(readArray at: 3) = (Array with: object1 with: object2 with: 3)].
	
	readObject1 := readArray at: 1.
	self should: [readObject1 name = 'This is a test'].	
	self should: [readObject1 time = now1].

	readObject2 := readArray at: 2.
	self should: [readObject2 name = 'This is a test2'].	
	self should: [readObject2 time = now2]
