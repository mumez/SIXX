tests
testReadSixxForCompositeObject
	| sixxString slipObj headerObj |
	sixxString := '<sixx.object sixx.id="0" sixx.type="SixxMockEnvelope" >
	<sixx.object sixx.id="1" sixx.name="header" sixx.type="SixxMockHeader" >
		<sixx.object sixx.id="2" sixx.name="id" sixx.type="String" >99</sixx.object>
	</sixx.object>
</sixx.object>
'.
	slipObj := Object readSixxFrom: sixxString.
	headerObj := slipObj header.
	self
		should: [headerObj id = '99']