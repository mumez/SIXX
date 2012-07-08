tests
testSixxStringForVariableObjectNoData
	| expectedStr variableObj |
	
	expectedStr := '<sixx.object sixx.id="0" sixx.type="SixxMockBinaryData" >
	<sixx.object sixx.id="1" sixx.name="author" sixx.type="String" >MU</sixx.object>
	<sixx.object sixx.id="2" sixx.name="version" sixx.type="String" >0.1</sixx.object>
</sixx.object>
'.

	variableObj := SixxMockBinaryData author: 'MU' version: '0.1' data: #().
	self
		should: [variableObj sixxString = expectedStr].
