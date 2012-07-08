tests
testSixxStringForClass
	| expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="SixxMockClassForUnitTest class" >
	<sixx.object sixx.id="1" sixx.name="instVar1" sixx.type="String" >value1</sixx.object>
	<sixx.object sixx.id="2" sixx.name="instVar2" sixx.type="String" >value2</sixx.object>
	<sixx.object sixx.id="3" sixx.name="instVar3" sixx.type="String" >value3</sixx.object>
</sixx.object>
'.
	SixxMockClassForUnitTest instVar1: 'value1'.
	SixxMockClassForUnitTest instVar2: 'value2'.
	SixxMockClassForUnitTest instVar3: 'value3'.
	self
		should: [SixxMockClassForUnitTest sixxString = expectedStr]
