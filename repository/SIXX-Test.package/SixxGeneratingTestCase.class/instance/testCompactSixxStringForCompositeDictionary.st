tests
testCompactSixxStringForCompositeDictionary

	"SixxGeneratingTestCase debug: #testCompactSixxStringForCompositeDictionary"
	
	| originalSettings dic childDic expected |
	originalSettings := SixxSettings useCompactTags.
	[SixxSettings useCompactTags: true.
	
	expected := '<o i="0" t="Dictionary" >
	<o i="1" t="Association" >
		<o i="2" n="key" t="Symbol" >parent1</o>
		<o i="3" n="value" t="String" >sample string.</o>
	</o>
	<o i="4" t="Association" >
		<o i="5" n="key" t="Symbol" >parent4</o>
		<o i="6" n="value" t="Dictionary" >
			<o i="7" t="Association" >
				<o i="8" n="key" t="Symbol" >child1</o>
				<o i="9" n="value" t="String" >abcde</o>
			</o>
		</o>
	</o>
	<o i="10" t="Association" >
		<o i="11" n="key" t="Symbol" >parent3</o>
		<o i="12" n="value" t="Array" >
			<o i="13" t="SmallInteger" >10</o>
			<o i="14" t="SmallInteger" >20</o>
			<o i="15" t="SmallInteger" >30</o>
		</o>
	</o>
	<o i="16" t="Association" >
		<o i="17" n="key" t="Symbol" >parent2</o>
		<o i="18" n="value" t="SmallInteger" >100</o>
	</o>
</o>
'.
	childDic := Dictionary new.
	childDic at: #child1 put: 'abcde'.
	dic := Dictionary new.
	dic at: #parent1 put: 'sample string.'.
	dic at: #parent2 put: 100.
	dic at: #parent3 put: #(10 20 30 ).
	dic at: #parent4 put: childDic.
	self
		should: [self isSameContentsDictionary: (Object readSixxFrom: dic sixxString) with: (Object readSixxFrom: expected)].
		
	] ensure: [SixxSettings useCompactTags: originalSettings]