tests
testReadSixxForStringUsingCDATA
	| originalSetting sixxString string expectedString1 expectedString2 |
	[originalSetting := SixxSettings useCDATA.
	SixxSettings useCDATA: true.
	sixxString := '<sixx.object sixx.id="0" sixx.type="String" ><![CDATA[Hi, I''m String-object.
How are you?
]]></sixx.object>
'.

	expectedString1 := 'Hi, I''m String-object.
How are you?
'.
	"LF converted string - for a strict XML parser"
	expectedString2 := expectedString1 copyReplaceAll: (String with: Character cr) with: (String with: Character lf).

	string := Object readSixxFrom: sixxString.
	self
		should: [string = expectedString1 or: [string = expectedString2]]]
		ensure: [SixxSettings useCDATA: originalSetting]