tests
testReadSixxForCorruptRecursiveDictionary
	| originalRecoveryRead |
	[ |  sixxString |
	originalRecoveryRead := SixxSettings useRecoveryRead.
	SixxSettings useRecoveryRead: false.
	sixxString := '<sixx.object sixx.id="0" sixx.type="Dictionary" >
	<sixx.object sixx.id="1" sixx.type="Association" >
		<sixx.object sixx.id="2" sixx.name="key" sixx.type="Symbol" >key2</sixx.object>
		<sixx.object sixx.id="3" sixx.name="value" sixx.type="SmallInteger" >100</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.type="Association" >
		<sixx.object sixx.id="5" sixx.name="key" sixx.type="Symbol" >key1</sixx.object>
		<sixx.object sixx.id="6" sixx.name="value" sixx.type="String" >value1</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="7" sixx.type="Association" >
		<sixx.object six
'.
	self should:[ Object readSixxFrom: sixxString] raise: SixxXmlParseError.
	
	] ensure: [SixxSettings useRecoveryRead: originalRecoveryRead]