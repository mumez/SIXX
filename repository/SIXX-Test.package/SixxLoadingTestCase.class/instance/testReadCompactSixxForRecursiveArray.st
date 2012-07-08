tests
testReadCompactSixxForRecursiveArray

	"SixxLoadingTestCase debug: #testReadCompactSixxForRecursiveArray"
	
	| originalSettings sixxString arr  |
	originalSettings := SixxSettings useCompactTags.
	[SixxSettings useCompactTags: true.
	
	sixxString := '<o i="0" t="Array" >
	<o i="1" t="SmallInteger" >10</o>
	<o i="2" t="SmallInteger" >20</o>
	<o r="0" ></o>
</o>
'.
	arr := Object readSixxFrom: sixxString.
	self
		should: [arr size = 3].
	self
		should: [(arr at: 1)
				= 10].
	self
		should: [(arr at: 2)
				= 20].
	self
		should: [(arr at: 3)
				== arr]
			
	] ensure: [SixxSettings useCompactTags: originalSettings].