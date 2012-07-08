tests
testIgnorableInstVarNames
	"self debug: #testIgnorableInstVarNames"
	| obj readObject|
	obj := SixxMockObjectWithCache new.
	obj att1: 1.
	obj att2: 2.
	obj cache1: 'cache1'.	
	obj cache2: 'cache2'.

	readObject := Object readSixxFrom: obj sixxString.
	self should: [readObject att1 = 1].	
	self should: [readObject att2 = 2].	
	self should: [readObject cache1 = nil].	
	self should: [readObject cache2 = nil].	