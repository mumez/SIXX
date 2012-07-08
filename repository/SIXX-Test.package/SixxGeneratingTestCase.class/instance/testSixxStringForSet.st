tests
testSixxStringForSet
	| set result |
	set := Set new.
	set add: 10.
	set add: 20.
	set add: 30.
	set add: 30.
	result := Object readSixxFrom: set sixxString.
	self
		should: [result size = 3].
	self
		should: [result includes: 10].
	self
		should: [result includes: 20].
	self
		should: [result includes: 30].
	