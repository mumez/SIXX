tests
testCompactWriteRecursiveObject

	"SixxWriteStreamTestCase debug: #testCompactWriteRecursiveObject"
	
	| originalSettings st wst expected arr col |
	originalSettings := SixxSettings useCompactTags.
	SixxSettings useCompactTags: true.
	[expected := '<?xml version="1.0" encoding="utf-8"?>
<cixx v="1.0">
	<o i="0" t="Array" >
		<o i="1" t="SmallInteger" >10</o>
		<o i="2" t="SmallInteger" >20</o>
		<o i="3" t="SmallInteger" >30</o>
	</o>
	<o i="4" t="OrderedCollection" >
		<o r="0" />
	</o>
	<o i="5" t="Array" >
		<o r="1" />
		<o r="2" />
		<o r="3" />
	</o>
</cixx>'.
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
		
	] ensure: [SixxSettings useCompactTags: originalSettings]