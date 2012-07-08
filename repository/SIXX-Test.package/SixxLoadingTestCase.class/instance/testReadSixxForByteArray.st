tests
testReadSixxForByteArray
	| sixxString byteArr |
	sixxString := '<sixx.object sixx.id="0" sixx.type="ByteArray" >0A141E</sixx.object>
'.
	byteArr := Object readSixxFrom: sixxString.
	self
		should: [byteArr size = 3].
	self
		should: [(byteArr at: 1)
				= 10].
	self
		should: [(byteArr at: 2)
				= 20].
	self
		should: [(byteArr at: 3)
				= 30]