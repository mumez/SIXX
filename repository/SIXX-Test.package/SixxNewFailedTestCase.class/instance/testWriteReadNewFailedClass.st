tests
testWriteReadNewFailedClass
	| original sixxString read |
	original := SixxMockFixedNewFailedClass prototype1.
	self should: [original att1 = 1].
	self should: [original att2 =  'TWO']. 
	self should: [original sixxString] raise: SixxInvalidSerialization.
	sixxString := original sixxString.
	
	self should: [Object readSixxFrom: sixxString] raise: SixxNewFailed.
	read := Object readSixxFrom: sixxString.
	self should: [read att1 = 1].
	self should: [read att2 =  'TWO'].
	self should: [read att3Block notNil].
	
	
	
	