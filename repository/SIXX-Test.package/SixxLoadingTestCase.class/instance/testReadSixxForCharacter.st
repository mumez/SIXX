tests
testReadSixxForCharacter
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Character" >$A</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= $A]