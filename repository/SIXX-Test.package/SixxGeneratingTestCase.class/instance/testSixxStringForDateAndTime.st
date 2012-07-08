tests
testSixxStringForDateAndTime
	"self debug: #testSixxStringForDateAndTime"
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="DateAndTime" >2006-07-19T03:45:06+00:00</sixx.object>
'.
	self
		should: [(DateAndTime year: 2006 day: 200 hour: 3 minute: 45 second: 6 offset: Duration zero) sixxString = expectedStr]