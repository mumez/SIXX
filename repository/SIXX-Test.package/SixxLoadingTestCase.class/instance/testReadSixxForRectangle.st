tests
testReadSixxForRectangle
	"SixxLoadingTestCase debug: #testReadSixxForRectangle"
	| sixxString |
	sixxString :=  '<sixx.object sixx.id="0" sixx.type="Rectangle" >1@1 corner: 3@4</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (1@1 corner: 3@4)].
			
	sixxString :=   '<sixx.object sixx.id="0" sixx.type="Rectangle" >-1@1.234 corner: 3.456@5</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (-1@1.234 corner: 3.456@5)].
			
		