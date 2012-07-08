tests
testSixxStringForTime
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Time" >' 
				, (Time readSixxContentStringFrom: (ReadStream on: '1:30:59 pm')) sixxContentString , '</sixx.object>
'.
	self 
		should: [(Time readSixxContentStringFrom: (ReadStream on: '1:30:59 pm')) sixxString = expectedStr]