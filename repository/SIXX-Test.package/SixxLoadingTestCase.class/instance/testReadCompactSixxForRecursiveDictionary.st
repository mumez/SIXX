tests
testReadCompactSixxForRecursiveDictionary

	"SixxLoadingTestCase debug: #testReadCompactSixxForRecursiveDictionary"

	| originalSettings sixxString dic |
	originalSettings := SixxSettings useCompactTags.
	[SixxSettings useCompactTags: true.

	sixxString := '<o i="0" t="Dictionary" >
	<o i="1" t="Association" >
		<o i="2" n="key" t="Symbol" >key2</o>
		<o i="3" n="value" t="SmallInteger" >100</o>
	</o>
	<o i="4" t="Association" >
		<o i="5" n="key" t="Symbol" >key1</o>
		<o i="6" n="value" t="String" >value1</o>
	</o>
	<o i="7" t="Association" >
		<o i="8" n="key" t="Symbol" >key3</o>
		<o r="0" n="value" ></o>
	</o>
</o>
'.
	dic := Object readSixxFrom: sixxString.
	self
		should: [dic size = 3].
	self
		should: [(dic at: #key1)
				= 'value1'].
	self
		should: [(dic at: #key2)
				= 100].
	self
		should: [(dic at: #key3)
				== dic]
			
	] ensure: [SixxSettings useCompactTags: originalSettings].