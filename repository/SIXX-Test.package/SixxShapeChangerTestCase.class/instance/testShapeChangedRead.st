tests
testShapeChangedRead
	"SixxShapeChangerTestCase debug: #testShapeChangedRead"
	| oldSixx obj |
	oldSixx :=  '<sixx.object sixx.id="0" sixx.type="SixxMockShapeChangedObjectOLD" >
		<sixx.object sixx.id="1" sixx.name="oldNamedVar1" sixx.type="SmallInteger" >1</sixx.object>
		<sixx.object sixx.id="3" sixx.name="originalAtt1" sixx.type="SmallInteger" >3</sixx.object>
	</sixx.object>'.

	SixxContext evaluate: [
		obj :=  Object readSixxFrom: oldSixx.		
	] shapeChangersBy: [:shapeChangers | 
		shapeChangers at: #SixxMockShapeChangedObjectOLD put: SixxMockShapeChangedObject
	].
 
	self should: [obj class = SixxMockShapeChangedObject].
	self should: [obj renamedAtt1 = 1].
	self should: [obj addedAtt1 = 2].
	self should: [obj originalAtt1 = 3].