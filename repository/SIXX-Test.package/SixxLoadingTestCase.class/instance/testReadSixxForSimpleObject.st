tests
testReadSixxForSimpleObject
	| sixxString |
	sixxString := '<sixx.object sixx.id="0" sixx.type="SixxMockHeader" >
	<sixx.object sixx.id="1" sixx.name="id" sixx.type="String" >1000</sixx.object>
</sixx.object>
'.
	self
		should: [(Object readSixxFrom: sixxString) id = '1000']