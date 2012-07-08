tests
testIgnorableClassInstVarNames
	"self debug: #testIgnorableClassInstVarNames"
	| obj readObject sixx |
	obj := SixxMockObjectWithCache.
	obj att1: 1.
	obj att2: 2.
	obj cache1: 'cache1'.
	sixx := obj sixxString.

	obj att1: nil.
	obj att2: nil.
	obj cache1: nil.	

	readObject := Object readSixxFrom: sixx.	

	self should: [readObject att1 = 1].	
	self should: [readObject att2 = 2].	
	self should: [readObject cache1 = nil].	
	