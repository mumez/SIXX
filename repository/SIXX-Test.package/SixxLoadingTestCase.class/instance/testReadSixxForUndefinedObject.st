tests
testReadSixxForUndefinedObject
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="UndefinedObject" >nil</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= nil]