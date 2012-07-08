tests
testReadSixxForPoint
	| sixxString |
	sixxString :=  '<sixx.object sixx.id="0" sixx.type="Point" >1@3</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (1 @ 3)].
			
	sixxString :=  '<sixx.object sixx.id="0" sixx.type="Point" >123456789.0@-3.5</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (123456789.0 @ -3.5)].

	sixxString :=  '<sixx.object sixx.id="0" sixx.type="Point" >(41/5)@(234/5)</sixx.object>
'.

	self
		should: [(Object readSixxFrom: sixxString)
				= ((41/5) @ (234/5))].
			
		