tests
testReadSixxForClass
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="SixxMockClassForUnitTest class" >
	<sixx.object sixx.id="1" sixx.name="instVar1" sixx.type="SmallInteger" >10</sixx.object>
	<sixx.object sixx.id="2" sixx.name="instVar2" sixx.type="SmallInteger" >20</sixx.object>
	<sixx.object sixx.id="3" sixx.name="instVar3" sixx.type="SmallInteger" >30</sixx.object>
</sixx.object>
'.
	SixxMockClassForUnitTest instVar1: 0;
		 instVar2: 0;
		 instVar3: 0.
	self
		should: [SixxMockClassForUnitTest instVar1 = 0].
	self
		should: [SixxMockClassForUnitTest instVar2 = 0].
	self
		should: [SixxMockClassForUnitTest instVar3 = 0].
	Object readSixxFrom: sixxString.
	self
		should: [SixxMockClassForUnitTest instVar1 = 10].
	self
		should: [SixxMockClassForUnitTest instVar2 = 20].
	self
		should: [SixxMockClassForUnitTest instVar3 = 30]