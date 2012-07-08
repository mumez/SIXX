tests
testCompactRecoveryRead

	"SixxReadStreamTestCase debug: #testCompactRecoveryRead"

	| originalRecoveryRead originalUseCompactTags  |
	[ |  str stream nextObject |
	originalRecoveryRead := SixxSettings useRecoveryRead.
	originalUseCompactTags := SixxSettings useCompactTags.
	SixxSettings useRecoveryRead: true.
	SixxSettings useCompactTags: true.
	str := '<?xml version="1.0" encoding="utf-8"?>
<cixx v="1.0">
	<o i="0" t="Dictionary" >
	<o i="1" t="Association" >
		<o i="2" n="key" t="Symbol" >key2</o>
		<o i="3" n="value" t="SmallInteger" >100</o>
	</o>
	<o i="4" t="Association" >
		<o i="5" n="key" t="Symbol" >key1</o>
		<o i="6" n="value" t="String" >value1</o>
	</o>
	<o i="7" t="Association" >
		<o i
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
	
	] ensure: [SixxSettings useRecoveryRead: originalRecoveryRead; useCompactTags: originalUseCompactTags]