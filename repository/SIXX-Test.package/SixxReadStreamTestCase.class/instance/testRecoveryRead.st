tests
testRecoveryRead
	| originalRecoveryRead   |
	[ |  str stream nextObject |
	originalRecoveryRead := SixxSettings useRecoveryRead.
	SixxSettings useRecoveryRead: true.
	str := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Dictionary" >
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
	stream := SixxReadStream on: (ReadStream on: str).
	self shouldnt: [nextObject := stream next] raise: SixxXmlParseError.
	self
		should: [nextObject class = Dictionary].
	self
		should: [(nextObject at: #key1)
				= 'value1'].
	self
		should: [(nextObject at: #key2)
				= 100].
	self
		shouldnt: [(nextObject includesKey: #key3)].
	
	] ensure: [SixxSettings useRecoveryRead: originalRecoveryRead]