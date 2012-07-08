tests
testSixxStringForColor
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Color" >(Color r: 0.0 g: 0.0 b: 1.0)</sixx.object>
'.
	self
		should: [Color blue sixxString = expectedStr]