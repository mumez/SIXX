tests
testSixxStringForSimpleObject
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Object" >
</sixx.object>
'.
	self
		should: [Object new sixxString = expectedStr]