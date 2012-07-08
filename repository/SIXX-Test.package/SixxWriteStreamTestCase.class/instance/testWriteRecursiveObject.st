tests
testWriteRecursiveObject
	| st wst expected arr col |
	expected := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Array" >
		<sixx.object sixx.id="1" sixx.type="SmallInteger" >10</sixx.object>
		<sixx.object sixx.id="2" sixx.type="SmallInteger" >20</sixx.object>
		<sixx.object sixx.id="3" sixx.type="SmallInteger" >30</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.type="OrderedCollection" >
		<sixx.object sixx.idref="0" />
	</sixx.object>
	<sixx.object sixx.id="5" sixx.type="Array" >
		<sixx.object sixx.idref="1" />
		<sixx.object sixx.idref="2" />
		<sixx.object sixx.idref="3" />
	</sixx.object>
</sixx>'.
	arr := #(10 20 30 ).
	col := OrderedCollection with: arr.
	st := WriteStream on: String new.
	wst := SixxWriteStream onWithDeclaration: st.
	wst nextPut: arr.
	wst nextPut: col.
	wst nextPut: #(10 20 30 ) copy.
	wst close.
	self
		should: [st contents = expected]