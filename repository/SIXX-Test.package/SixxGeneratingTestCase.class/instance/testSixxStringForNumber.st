tests
testSixxStringForNumber
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Fraction" >(3/4)</sixx.object>
'.
	self
		should: [(3 / 4) sixxString = expectedStr]