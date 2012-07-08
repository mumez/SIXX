tests
testSixxStringForCompositeDictionary
	"SixxGeneratingTestCase debug: #testSixxStringForCompositeDictionary"
	| dic childDic expected |
	expected := '<sixx.object sixx.id="0" sixx.type="Dictionary" >
	<sixx.object sixx.id="1" sixx.type="Association" >
		<sixx.object sixx.id="2" sixx.name="key" sixx.type="Symbol" >parent1</sixx.object>
		<sixx.object sixx.id="3" sixx.name="value" sixx.type="String" >sample string.</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.type="Association" >
		<sixx.object sixx.id="5" sixx.name="key" sixx.type="Symbol" >parent4</sixx.object>
		<sixx.object sixx.id="6" sixx.name="value" sixx.type="Dictionary" >
			<sixx.object sixx.id="7" sixx.type="Association" >
				<sixx.object sixx.id="8" sixx.name="key" sixx.type="Symbol" >child1</sixx.object>
				<sixx.object sixx.id="9" sixx.name="value" sixx.type="String" >abcde</sixx.object>
			</sixx.object>
		</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="10" sixx.type="Association" >
		<sixx.object sixx.id="11" sixx.name="key" sixx.type="Symbol" >parent3</sixx.object>
		<sixx.object sixx.id="12" sixx.name="value" sixx.type="Array" >
			<sixx.object sixx.id="13" sixx.type="SmallInteger" >10</sixx.object>
			<sixx.object sixx.id="14" sixx.type="SmallInteger" >20</sixx.object>
			<sixx.object sixx.id="15" sixx.type="SmallInteger" >30</sixx.object>
		</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="16" sixx.type="Association" >
		<sixx.object sixx.id="17" sixx.name="key" sixx.type="Symbol" >parent2</sixx.object>
		<sixx.object sixx.id="18" sixx.name="value" sixx.type="SmallInteger" >100</sixx.object>
	</sixx.object>
</sixx.object>
'.
	childDic := Dictionary new.
	childDic at: #child1 put: 'abcde'.
	dic := Dictionary new.
	dic at: #parent1 put: 'sample string.'.
	dic at: #parent2 put: 100.
	dic at: #parent3 put: #(10 20 30 ).
	dic at: #parent4 put: childDic.
	self
		should: [self isSameContentsDictionary: (Object readSixxFrom: dic sixxString) with: (Object readSixxFrom: expected)]