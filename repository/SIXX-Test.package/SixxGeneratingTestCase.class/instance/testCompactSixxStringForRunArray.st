tests
testCompactSixxStringForRunArray

	"SixxGeneratingTestCase debug: #testCompactSixxStringForRunArray"
	
	| originalSettings arr expectedStr |
	originalSettings := SixxSettings useCompactTags.
	[SixxSettings useCompactTags: true.
	
	expectedStr := '<o i="0" t="RunArray" >
	<o i="1" n="runs" t="Array" >
		<o i="2" t="SmallInteger" >1</o>
		<o i="3" t="SmallInteger" >2</o>
		<o r="2" />
	</o>
	<o i="4" n="values" t="Array" >
		<o r="2" />
		<o r="3" />
		<o i="5" t="SmallInteger" >3</o>
	</o>
</o>
'.

	arr := RunArray runs: #(1 2 1) values: #(1 2 3).
	self should: [arr sixxString = expectedStr]
	
	] ensure: [SixxSettings useCompactTags: originalSettings].