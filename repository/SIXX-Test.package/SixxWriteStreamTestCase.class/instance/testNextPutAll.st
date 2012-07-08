tests
testNextPutAll
	| st wst expected |
	expected := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Character" >$a</sixx.object>
	<sixx.object sixx.id="1" sixx.type="Character" >$b</sixx.object>
	<sixx.object sixx.id="2" sixx.type="Character" >$c</sixx.object>
</sixx>'.
	st := WriteStream on: String new.
	wst := SixxWriteStream onWithDeclaration: st.
	wst nextPutAll: 'abc'.
	wst close.
	self
		should: [st contents = expected]