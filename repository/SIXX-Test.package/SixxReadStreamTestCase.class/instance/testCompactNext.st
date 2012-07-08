tests
testCompactNext

	"SixxReadStreamTestCase debug: #testCompactNext"

	| originalSettings str stream |
	originalSettings := SixxSettings useCompactTags.
	[str := '<?xml version="1.0" encoding="utf-8"?>
<cixx v="1.0">
	<o i="0" t="String" >a</o>
	<o i="1" t="String" >b</o>
	<o i="2" t="String" >c</o>
</cixx>'.
	stream := SixxReadStream on: (ReadStream on: str).
	self
		should: [stream next = 'a'].
	self
		should: [stream next = 'b'].
	self
		should: [stream next = 'c'].
	self
		should: [stream next = nil]
		
	] ensure: [SixxSettings useCompactTags: originalSettings]