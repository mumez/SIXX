tests
testSixxStringForCharacter
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Character" >$A</sixx.object>
'.
	self
		should: [$A sixxString = expectedStr]