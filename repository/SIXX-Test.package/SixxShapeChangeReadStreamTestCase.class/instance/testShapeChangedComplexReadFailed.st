tests
testShapeChangedComplexReadFailed
	"SixxShapeChangeReadStreamTestCase debug: #testShapeChangedComplexReadFailed"
	| oldSixx srs arr |
	oldSixx :=  '<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Array" >
		<sixx.object sixx.id="1" sixx.type="SixxMockShapeChangedObjectOLD" >
			<sixx.object sixx.id="2" sixx.name="oldNamedVar1" sixx.type="SmallInteger" >1</sixx.object>
			<sixx.object sixx.id="3" sixx.name="originalAtt1" sixx.type="SmallInteger" >3</sixx.object>
		</sixx.object>
		<sixx.object sixx.id="4" sixx.type="SixxMockShapeChangedObjectOLD" >
			<sixx.object sixx.id="5" sixx.name="oldNamedVar1" sixx.type="SmallInteger" >11</sixx.object>
			<sixx.object sixx.id="6" sixx.name="originalAtt1" sixx.type="SmallInteger" >33</sixx.object>
		</sixx.object>
		<sixx.object sixx.idref="1" ></sixx.object>
		<sixx.object sixx.id="0" sixx.type="String" >here</sixx.object>
	</sixx.object>
</sixx>'.
	srs := SixxShapeChangeReadStream on: (ReadStream on: oldSixx).
	srs shapeChangers at: #SixxMockShapeChangedObjectFAILED put: SixxMockShapeChangedObject.
	arr := srs next.
	srs close.
	self should: [arr class = Array].
	self should: [arr = #(nil nil nil 'here')].
	