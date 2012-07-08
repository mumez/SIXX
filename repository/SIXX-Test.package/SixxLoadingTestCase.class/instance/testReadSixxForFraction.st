tests
testReadSixxForFraction
	"SixxLoadingTestCase debug: #testReadSixxForFraction"
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Fraction" >(3/4)</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString)
				= (3/4)]