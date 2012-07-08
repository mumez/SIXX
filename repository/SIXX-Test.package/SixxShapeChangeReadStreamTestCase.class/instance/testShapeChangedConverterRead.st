tests
testShapeChangedConverterRead
	"SixxShapeChangeReadStreamTestCase debug: #testShapeChangedConverterRead"
	| oldSixx srs arr obj1 obj2 obj3 |
	oldSixx :=  '<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Array" >
		<sixx.object sixx.id="1" sixx.type="SixxMockShapeChangedObjectOLD" >
			<sixx.object sixx.id="2" sixx.name="oldNamedVar1" sixx.type="SmallInteger" >1</sixx.object>
			<sixx.object sixx.id="3" sixx.name="originalAtt1" sixx.type="SmallInteger" >3</sixx.object>
		</sixx.object>
		<sixx.object sixx.id="4" sixx.type="SixxMockShapeChangedObjectOLD" >
			<sixx.object sixx.id="5" sixx.name="oldNamedVar1" sixx.type="SmallInteger" >11</sixx.object>
			<sixx.object sixx.id="6" sixx.name="originalAtt1" sixx.type="SmallInteger" >33</sixx.object>
			<sixx.object sixx.id="7" sixx.name="oldVar2" sixx.type="SmallInteger" >44</sixx.object>
		</sixx.object>
		<sixx.object sixx.idref="1" ></sixx.object>
	</sixx.object>
</sixx>'.
	srs := SixxShapeChangeReadStream on: (ReadStream on: oldSixx).
	srs shapeChangers at: #SixxMockShapeChangedObjectOLD put: SixxMockShapeChanger.
	arr := srs next.
	srs close.
	self should: [arr class = Array].
	self should: [arr size = 3].
	obj1 := arr at: 1.
	self should: [obj1 renamedAtt1 = 1].
	self should: [obj1 addedAtt1 = 22222].
	self should: [obj1 originalAtt1 = 3].
	obj2 := arr at: 2.
	self should: [obj2 renamedAtt1 = 11].
	self should: [obj2 addedAtt1 = 22222].
	self should: [obj2 originalAtt1 = 33].
	obj3 := arr at: 3.
	self should: [obj3 = obj1].