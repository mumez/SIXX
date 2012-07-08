tests
testParseXmlWithSixxYaxo2XmlParserAdapter
	| sixxString result oldParser |
	self class environment
		at: #XMLDOMParser
		ifAbsent: [^ self].
	self class environment
		at: #XMLNodeWithChildren
		ifAbsent: [^ self].
	sixxString := '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="1" sixx.type="SmallInteger" >100</sixx.object>
	<sixx.object sixx.id="2" sixx.type="String" >abcde</sixx.object>
	<sixx.object sixx.id="3" sixx.type="Array" >
		<sixx.object sixx.id="4" sixx.type="SmallInteger" >10</sixx.object>
		<sixx.object sixx.id="5" sixx.type="SmallInteger" >20</sixx.object>
	</sixx.object>
	<sixx.object sixx.idref="0" ></sixx.object>
</sixx.object>
'.
	oldParser := SixxXmlUtil parserAdapter.
	[SixxXmlUtil parserAdapter: SixxYaxo2XmlParserAdapter.
	result := Object readSixxFrom: sixxString.
	self
		should: [(result at: 1)
				= 100].
	self
		should: [(result at: 2)
				= 'abcde'].
	self
		should: [(result at: 3)
				= #(10 20 )].
	self
		should: [(result at: 4)
				== result]]
		ensure: [SixxXmlUtil parserAdapter: oldParser]