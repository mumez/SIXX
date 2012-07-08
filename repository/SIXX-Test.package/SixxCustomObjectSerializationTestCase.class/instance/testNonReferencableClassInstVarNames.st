tests
testNonReferencableClassInstVarNames
	"SixxCustomObjectSerializationTestCase debug: #testNonReferencableClassInstVarNames"
	| expectedStr a b shared array |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="1" sixx.type="SixxMockObjectWithNonRef class" >
		<sixx.object sixx.name="att1" sixx.type="Time" >11:24:02 am</sixx.object>
		<sixx.object sixx.id="2" sixx.name="att2" sixx.type="Time" >11:24:02 am</sixx.object>
</sixx.object>
	<sixx.object sixx.id="3" sixx.type="SixxMockObjectWithNonRef2 class" >
		<sixx.object sixx.name="att1" sixx.type="Time" >11:24:02 am</sixx.object>
		<sixx.object sixx.name="att2" sixx.idref="2" />
</sixx.object>
	<sixx.object sixx.idref="1" />
</sixx.object>
'.
	shared := Time readSixxContentStringFrom: (ReadStream on: '11:24:02 am').
	a := SixxMockObjectWithNonRef.
	a att1: shared.
	a att2: shared.
	a cache1: shared.

	b := SixxMockObjectWithNonRef2.
	b att1: shared.
	b att2: shared.
	b cache1: shared.

	array := Array with: a with: b with: a.

	self
		should: [array sixxString = expectedStr].

	a att1: nil; att2: nil; cache1: nil.
	b att1: nil; att2: nil; cache1: nil