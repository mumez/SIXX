tests
testSixxStringForRectangle
	"SixxGeneratingTestCase debug: #testSixxStringForRectangle"
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Rectangle" >1@1 corner: 3@4</sixx.object>
'.
	self
		should: [(1@1 corner: 3@4) sixxString = expectedStr]