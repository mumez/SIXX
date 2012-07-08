tests
testReadSixxForBoolean
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="True" >true</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= true]