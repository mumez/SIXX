tests
testReadSixxForInterval
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Interval" >(1 to: 10 by: 3)</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (1 to: 10 by: 3)]