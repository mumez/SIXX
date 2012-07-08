tests
testSixxStringForObjectWithId
	"SixxCustomObjectSerializationTestCase debug: #testSixxStringForObjectWithId"
	| expectedStr a b array |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="a" sixx.type="SixxMockObjectWithId" >
		<sixx.object sixx.id="2" sixx.name="id" sixx.type="String" >a</sixx.object>
		<sixx.object sixx.id="3" sixx.name="data" sixx.type="String" >aaa</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="b" sixx.type="SixxMockObjectWithId" >
		<sixx.object sixx.id="5" sixx.name="id" sixx.type="String" >b</sixx.object>
		<sixx.object sixx.id="6" sixx.name="data" sixx.type="String" >bbb</sixx.object>
	</sixx.object>
	<sixx.object sixx.idref="a" />
</sixx.object>
'.

	a := SixxMockObjectWithId id: 'a'.
	a data: 'aaa'.
	b := SixxMockObjectWithId id: 'b'.
	b data: 'bbb'.
	array := Array with: a with: b with: a.

	self
		should: [array sixxString = expectedStr]