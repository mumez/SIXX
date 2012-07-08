tests
testSixxStringForString
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="String" >Hi&#44; I&apos;m String-object</sixx.object>
'.
	self
		should: ['Hi, I''m String-object' sixxString = expectedStr]