tests
testSixxStringForPersonWithNilAttributes
	"SixxGeneratingTestCase debug: #testSixxStringForPersonWithNilAttributes"
	| expectedStr1 expectedStr2 person1 person2 originalValue |
	expectedStr1 := '<sixx.object sixx.id="0" sixx.type="SixxMockPerson" >
	<sixx.object sixx.id="1" sixx.name="name" sixx.type="String" >person1</sixx.object>
	<sixx.object sixx.name="requests" sixx.type="UndefinedObject" />
	<sixx.object sixx.id="2" sixx.name="partners" sixx.type="Array" >
		<sixx.object sixx.id="3" sixx.type="SixxMockPerson" >
			<sixx.object sixx.id="4" sixx.name="name" sixx.type="String" >person2</sixx.object>
			<sixx.object sixx.name="requests" sixx.type="UndefinedObject" />
			<sixx.object sixx.name="partners" sixx.type="UndefinedObject" />
		</sixx.object>
		<sixx.object sixx.type="UndefinedObject" />
	</sixx.object>
</sixx.object>
'.
	expectedStr2 := '<sixx.object sixx.id="0" sixx.type="SixxMockPerson" >
	<sixx.object sixx.id="1" sixx.name="name" sixx.type="String" >person1</sixx.object>
	<sixx.object sixx.id="2" sixx.name="partners" sixx.type="Array" >
		<sixx.object sixx.id="3" sixx.type="SixxMockPerson" >
			<sixx.object sixx.id="4" sixx.name="name" sixx.type="String" >person2</sixx.object>
		</sixx.object>
		<sixx.object sixx.type="UndefinedObject" />
	</sixx.object>
</sixx.object>
'.
	[originalValue := SixxSettings suppressNilWrite.
	person1 := SixxMockPerson new name: 'person1'.
	person2 := SixxMockPerson new name: 'person2'.
	person1 partners: (Array with: person2 with: nil).
	SixxSettings suppressNilWrite: false.
	self should: [person1 sixxString = expectedStr1].
	SixxSettings suppressNilWrite: true.
	self should: [person1 sixxString = expectedStr2]]
		ensure: [SixxSettings suppressNilWrite: originalValue]