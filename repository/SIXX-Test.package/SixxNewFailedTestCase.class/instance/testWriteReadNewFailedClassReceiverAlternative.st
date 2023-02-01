tests
testWriteReadNewFailedClassReceiverAlternative
	| original sixxString read |
	original := SixxMockFixedNewFailedClass prototype1.
	self should: [original att1 = 1].
	self should: [original att2 =  'TWO']. 
	self should: [original sixxString] raise: SixxInvalidSerialization.
	sixxString := self ignoreWarning: [original sixxString].
	
	self should: [Object readSixxFrom: sixxString] raise: SixxNewFailed.
	read := self ignoreWarning: [[Object readSixxFrom: sixxString] on: SixxNewFailed do: [:ex | ex resume: SixxMockFixedAlternativeClass]].
	self should: [read class = SixxMockFixedAlternativeClass].
	self should: [read att1 = 1].
	self should: [read att2 =  'TWO'].
	self should: [read att3Block notNil].
	
	
	
	