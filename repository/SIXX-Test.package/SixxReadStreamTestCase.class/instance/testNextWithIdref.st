tests
testNextWithIdref
	| str stream |
	str := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Character" >$a</sixx.object>
	<sixx.object sixx.id="1" sixx.type="Character" >$u</sixx.object>
	<sixx.object sixx.idref="0" ></sixx.object>
	<sixx.object sixx.idref="1" ></sixx.object>
</sixx>'.
	stream := SixxReadStream on: (ReadStream on: str).
	self
		should: [stream next = $a].
	self
		should: [stream next = $u].
	self
		should: [stream next = $a].
	self
		should: [stream next = $u]