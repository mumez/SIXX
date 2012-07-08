tests
testSixxStringForDictionary
	| dic expected |
	expected := '<sixx.object sixx.id="0" sixx.type="Dictionary" >
	<sixx.object sixx.id="1" sixx.type="Association" >
		<sixx.object sixx.id="2" sixx.name="key" sixx.type="Symbol" >key2</sixx.object>
		<sixx.object sixx.id="3" sixx.name="value" sixx.type="String" >value2</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.type="Association" >
		<sixx.object sixx.id="5" sixx.name="key" sixx.type="Symbol" >key1</sixx.object>
		<sixx.object sixx.id="6" sixx.name="value" sixx.type="String" >value1</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="7" sixx.type="Association" >
		<sixx.object sixx.id="8" sixx.name="key" sixx.type="Symbol" >key3</sixx.object>
		<sixx.object sixx.id="9" sixx.name="value" sixx.type="String" >value3</sixx.object>
	</sixx.object>
</sixx.object>
'.
	dic := Dictionary new.
	dic at: #key1 put: 'value1'.
	dic at: #key2 put: 'value2'.
	dic at: #key3 put: 'value3'.
	self
		should: [self isSameContentsDictionary: (Object readSixxFrom: dic sixxString) with: (Object readSixxFrom: expected)]