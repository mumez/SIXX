tests
testReadSixxForRectangleOldFormat
	"SixxLoadingTestCase debug: #testReadSixxForRectangleOldFormat"
	| sixxString |
	sixxString :=  '<sixx.object sixx.id="0" sixx.type="Rectangle" >
	<sixx.object sixx.id="1" sixx.name="origin" sixx.type="Point" >1@1</sixx.object>
	<sixx.object sixx.id="2" sixx.name="corner" sixx.type="Point" >3@4</sixx.object>
</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (1@1 corner: 3@4)].
			
	