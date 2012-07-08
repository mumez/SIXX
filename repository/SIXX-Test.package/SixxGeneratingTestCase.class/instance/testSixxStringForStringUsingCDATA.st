tests
testSixxStringForStringUsingCDATA
	| originalSetting expectedStr |
	[originalSetting := SixxSettings useCDATA.
	SixxSettings useCDATA: true.
	expectedStr := '<sixx.object sixx.id="0" sixx.type="String" ><![CDATA[Hi, I''m String-object.
How are you?
]]></sixx.object>
'.
	self
		should: ['Hi, I''m String-object.
How are you?
' sixxString = expectedStr]]
		ensure: [SixxSettings useCDATA: originalSetting]