tests
testReadSixxForTime
	| sixxString time |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Time" >4:10:32 pm</sixx.object>
'.
	time := (Object readSixxFrom: sixxString).
	self should: [time hours = 16].
	self should: [time minutes = 10].
	self should: [time seconds = 32]