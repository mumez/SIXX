tests
testReadSixxForVariableObject
	| sixxString variableObj |
	sixxString := '<sixx.object sixx.id="0" sixx.type="SixxMockBinaryData" >
	<sixx.object sixx.id="1" sixx.name="author" sixx.type="String" >MU</sixx.object>
	<sixx.object sixx.id="2" sixx.name="version" sixx.type="String" >0.1</sixx.object>
	<sixx.object sixx.id="3" sixx.type="SmallInteger" >1</sixx.object>
	<sixx.object sixx.id="4" sixx.type="SmallInteger" >2</sixx.object>
	<sixx.object sixx.id="5" sixx.type="SmallInteger" >3</sixx.object>
</sixx.object>
'.
	
	variableObj := Object readSixxFrom: sixxString.
	self should: [ variableObj author = 'MU'].
	self should: [ variableObj version = '0.1'].
	self should: [ variableObj size = 3].
	self should: [ (variableObj at: 1) = 1].
	self should: [ (variableObj at: 2) = 2].
	self should: [ (variableObj at: 3) = 3].
	
	