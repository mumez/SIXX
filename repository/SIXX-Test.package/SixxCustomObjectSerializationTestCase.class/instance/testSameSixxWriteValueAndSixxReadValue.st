tests
testSameSixxWriteValueAndSixxReadValue
	"SixxCustomObjectSerializationTestCase debug: #testSameSixxWriteValueAndSixxReadValue"

	| obj1 array array2 |
	obj1 := SixxMockCustomWriteObject new name: 'aa'; time: Time now.
	array := Array with:obj1 with:obj1.

	array2 := Object readSixxFrom: array sixxString.
	self should: [(array2 at: 1) = (array2 at: 2)].