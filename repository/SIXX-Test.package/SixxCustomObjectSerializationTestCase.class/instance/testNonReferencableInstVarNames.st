tests
testNonReferencableInstVarNames
	"SixxCustomObjectSerializationTestCase debug: #testNonReferencableInstVarNames"
	| expectedStr a b shared array |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="1" sixx.type="SixxMockObjectWithNonRef" >
		<sixx.object sixx.id="2" sixx.name="name" sixx.type="String" >aaa</sixx.object>
		<sixx.object sixx.name="att1" sixx.type="Time" >11:24:02 am</sixx.object>
		<sixx.object sixx.id="3" sixx.name="att2" sixx.type="Time" >11:24:02 am</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.type="SixxMockObjectWithNonRef" >
		<sixx.object sixx.id="5" sixx.name="name" sixx.type="String" >bbb</sixx.object>
		<sixx.object sixx.name="att1" sixx.type="Time" >11:24:02 am</sixx.object>
		<sixx.object sixx.name="att2" sixx.idref="3" />
	</sixx.object>
	<sixx.object sixx.idref="1" />
</sixx.object>
'.
	shared := Time readSixxContentStringFrom: (ReadStream on: '11:24:02 am').
	a := SixxMockObjectWithNonRef new name: 'aaa'.
	a att1: shared.
	a att2: shared.
	a cache1: shared.
	a cache2: shared.

	b := SixxMockObjectWithNonRef new name: 'bbb'.
	b att1: shared.
	b att2: shared.
	b cache1: shared.
	b cache2: shared.

	array := Array with: a with: b with: a.

	self
		should: [array sixxString = expectedStr]