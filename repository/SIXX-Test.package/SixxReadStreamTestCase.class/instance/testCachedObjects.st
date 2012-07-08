tests
testCachedObjects
	| str stream |
	str := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="String" >a</sixx.object>
	<sixx.object sixx.id="1" sixx.type="String" >b</sixx.object>
	<sixx.object sixx.id="2" sixx.type="String" >c</sixx.object>
</sixx>'.
	stream := SixxReadStream on: (ReadStream on: str).
	stream next; next.
	self
		should: [(stream cachedObjects at: 1)
				= 'a'].
	self
		should: [(stream cachedObjects at: 2)
				= 'b'].
	self
		shouldnt: [stream cachedObjects includesKey: 3].
	stream next.
	self
		should: [(stream cachedObjects at: 3)
				= 'c']