tests
testNewFailedRead
	"SixxShapeChangerTestCase debug: #testNewFailedRead"
	| oldSixx arr obj1 obj2 obj3 |
	oldSixx :=  '<sixx.object sixx.id="0" sixx.type="Array" >
		<sixx.object sixx.id="1" sixx.type="SixxMockFixedNewFailedClass" >
			<sixx.object sixx.id="2" sixx.name="att1" sixx.type="SmallInteger" >1</sixx.object>
			<sixx.object sixx.id="3" sixx.name="att2" sixx.type="SmallInteger" >2</sixx.object>
		</sixx.object>
		<sixx.object sixx.id="5" sixx.type="SixxMockFixedNewFailedClass" >
			<sixx.object sixx.id="6" sixx.name="att1" sixx.type="SmallInteger" >3</sixx.object>
			<sixx.object sixx.id="7" sixx.name="att2" sixx.type="SmallInteger" >4</sixx.object>
		</sixx.object>
		<sixx.object sixx.idref="1" ></sixx.object>
	</sixx.object>'.
	SixxContext evaluate: [
		arr :=  Object readSixxFrom: oldSixx.
	] shapeChangersBy: [:shapeChangers | 
		shapeChangers at: #SixxMockFixedNewFailedClass put: SixxMockFixedAlternativeClass.
	].
	self should: [arr class = Array].
	self should: [arr size = 3].
	obj1 := arr at: 1.
	self should: [obj1 class = SixxMockFixedAlternativeClass].
	self should: [obj1 att1 = 1].
	self should: [obj1 att2 = 2].
	self should: [obj1 att3Block notNil].
	obj2 := arr at: 2.
	self should: [obj2 class = SixxMockFixedAlternativeClass].
	self should: [obj2 att1 = 3].
	self should: [obj2 att2 = 4].
	self should: [obj2 att3Block notNil].
	obj3 := arr at: 3.
	self should: [obj3 = obj1].