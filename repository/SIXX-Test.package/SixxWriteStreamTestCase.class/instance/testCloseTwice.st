tests
testCloseTwice
	| st wst expected |
	expected := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="String" >abc</sixx.object>
</sixx>'.
	st := WriteStream on: String new.
	wst := SixxWriteStream onWithDeclaration: st.
	wst nextPut: 'abc'.
	wst close.
	wst close.
	self
		should: [st contents = expected]