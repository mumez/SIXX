tests
testCompactNextWithIdref

	"SixxReadStreamTestCase debug: #testCompactNextWithIdref"

	| originalSettings str stream |
	originalSettings := SixxSettings useCompactTags.
	[str := '<?xml version="1.0" encoding="utf-8"?>
<cixx v="1.0">
	<o i="0" t="Character" >$a</o>
	<o i="1" t="Character" >$u</o>
	<o r="0" ></o>
	<o r="1" ></o>
</cixx>'.
	stream := SixxReadStream on: (ReadStream on: str).
	self
		should: [stream next = $a].
	self
		should: [stream next = $u].
	self
		should: [stream next = $a].
	self
		should: [stream next = $u]
		
	] ensure: [SixxSettings useCompactTags: originalSettings]