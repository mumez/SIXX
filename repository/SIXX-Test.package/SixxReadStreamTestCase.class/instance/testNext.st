tests
testNext
	| str stream |
	str := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="String" >a</sixx.object>
	<sixx.object sixx.id="1" sixx.type="String" >b</sixx.object>
	<sixx.object sixx.id="2" sixx.type="String" >c</sixx.object>
</sixx>'.
	stream := SixxReadStream on: (ReadStream on: str).
	self
		should: [stream next = 'a'].
	self
		should: [stream next = 'b'].
	self
		should: [stream next = 'c'].
	self
		should: [stream next = nil]