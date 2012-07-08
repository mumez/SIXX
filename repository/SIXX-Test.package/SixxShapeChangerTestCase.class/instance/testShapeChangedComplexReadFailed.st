tests
testShapeChangedComplexReadFailed
	"SixxShapeChangerTestCase debug: #testShapeChangedComplexReadFailed"
	| oldSixx arr |
	oldSixx :=  '<sixx.object sixx.id="0" sixx.type="Array" >
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
	</sixx.object>'.
	SixxContext evaluate: [
		arr :=  Object readSixxFrom: oldSixx.
	] shapeChangersBy: [:shapeChangers | 
		shapeChangers at: #SixxMockShapeChangedObjectFAILED put: SixxMockShapeChangedObject.
	].
	self should: [arr class = Array].
	self should: [arr = #(nil nil nil 'here')].
	