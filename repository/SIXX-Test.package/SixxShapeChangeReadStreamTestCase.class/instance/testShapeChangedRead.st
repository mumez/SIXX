tests
testShapeChangedRead
	"SixxShapeChangeReadStreamTestCase debug: #testShapeChangedRead"
	| oldSixx srs obj |
	oldSixx :=  '<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="SixxMockShapeChangedObjectOLD" >
		<sixx.object sixx.id="1" sixx.name="oldNamedVar1" sixx.type="SmallInteger" >1</sixx.object>
		<sixx.object sixx.id="3" sixx.name="originalAtt1" sixx.type="SmallInteger" >3</sixx.object>
	</sixx.object>
</sixx>'.
	srs := SixxShapeChangeReadStream on: (ReadStream on: oldSixx).
	srs shapeChangers at: #SixxMockShapeChangedObjectOLD put: SixxMockShapeChangedObject.
	obj := srs next.
	srs close.
	self should: [obj class = SixxMockShapeChangedObject].
	self should: [obj renamedAtt1 = 1].
	self should: [obj addedAtt1 = 2].
	self should: [obj originalAtt1 = 3].