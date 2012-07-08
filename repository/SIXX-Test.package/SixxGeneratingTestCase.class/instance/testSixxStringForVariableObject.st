tests
testSixxStringForVariableObject
	| expectedStr variableObj |
	expectedStr :='<sixx.object sixx.id="0" sixx.type="SixxMockBinaryData" >
	<sixx.object sixx.id="1" sixx.name="author" sixx.type="String" >MU</sixx.object>
	<sixx.object sixx.id="2" sixx.name="version" sixx.type="String" >0.1</sixx.object>
	<sixx.object sixx.id="3" sixx.type="SmallInteger" >1</sixx.object>
	<sixx.object sixx.id="4" sixx.type="SmallInteger" >2</sixx.object>
	<sixx.object sixx.id="5" sixx.type="SmallInteger" >3</sixx.object>
</sixx.object>
'.
	
	variableObj := SixxMockBinaryData author: 'MU' version: '0.1' data: #(1 2 3).
	self
		should: [variableObj sixxString = expectedStr].
	
	