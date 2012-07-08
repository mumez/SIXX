tests
testSixxStringForBoolean
	| expectedStr |
	expectedStr := '<sixx.object sixx.type="True" />
'.
	self
		should: [true sixxString = expectedStr]