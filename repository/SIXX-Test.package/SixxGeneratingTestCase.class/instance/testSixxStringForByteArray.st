tests
testSixxStringForByteArray
	| expectedStr |
	expectedStr :=  '<sixx.object sixx.id="0" sixx.type="ByteArray" >0A141E</sixx.object>
'.
	self
		should: [(ByteArray with: 10 with: 20 with: 30) sixxString = expectedStr]