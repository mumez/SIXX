tests
testReadSixxForDate
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Date" >14 May 2002</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (Date fromDays: 37023)]