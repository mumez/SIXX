tests
testReadSixxForBag
	| sixxString bag |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Bag" >
	<sixx.object sixx.id="1" sixx.type="String" >abcd</sixx.object>
	<sixx.object sixx.id="2" sixx.type="SmallInteger" >10</sixx.object>
	<sixx.object sixx.idref="2" ></sixx.object>
	<sixx.object sixx.id="3" sixx.type="Array" >
		<sixx.object sixx.idref="2" ></sixx.object>
		<sixx.object sixx.id="4" sixx.type="SmallInteger" >20</sixx.object>
	</sixx.object>
</sixx.object>
'.
	bag := Object readSixxFrom: sixxString.
	self
		should: [bag size = 4].
	self
		should: [(bag occurrencesOf: 10)
				= 2].
	self
		should: [(bag occurrencesOf: 'abcd')
				= 1].
	self
		should: [(bag occurrencesOf: #(10 20 ))
				= 1]