tests
testSixxStringForDate
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Date" >14 May 2002</sixx.object>
'.
	self
		should: [(Date fromDays: 37023) sixxString = expectedStr]