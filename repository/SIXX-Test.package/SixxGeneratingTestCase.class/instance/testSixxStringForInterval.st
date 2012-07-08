tests
testSixxStringForInterval
	| interval expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Interval" >(1 to: 10 by: 3)</sixx.object>
'.
	interval := 1 to: 10 by: 3.
	self should: [interval sixxString = expectedStr]