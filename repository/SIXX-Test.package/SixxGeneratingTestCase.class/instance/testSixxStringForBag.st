tests
testSixxStringForBag
	| bag result |
	bag := Bag new.
	bag add: 10.
	bag add: 20.
	bag add: 30.
	bag add: 30.
	result := Object readSixxFrom: bag sixxString.
	self
		should: [result size = 4].
	self
		should: [result includes: 10].
	self
		should: [result includes: 20].
	self
		should: [result includes: 30].
	self
		should: [(result occurrencesOf: 30) = 2]