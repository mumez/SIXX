tests
testSixxStringForUndefinedObject
	| expectedStr |
	expectedStr :=  '<sixx.object sixx.type="UndefinedObject" />
'.
	self
		should: [nil sixxString = expectedStr]