tests
testReadSixxForRunArray
	| sixxString runArray |
	sixxString := '<sixx.object sixx.id="0" sixx.type="RunArray" >
	<sixx.object sixx.id="1" sixx.name="runs" sixx.type="Array" >
		<sixx.object sixx.id="2" sixx.type="SmallInteger" >1</sixx.object>
		<sixx.object sixx.id="3" sixx.type="SmallInteger" >2</sixx.object>
		<sixx.object sixx.idref="2" ></sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.name="values" sixx.type="Array" >
		<sixx.object sixx.idref="2" ></sixx.object>
		<sixx.object sixx.idref="3" ></sixx.object>
		<sixx.object sixx.id="5" sixx.type="SmallInteger" >3</sixx.object>
	</sixx.object>
</sixx.object>
'.
	runArray := Object readSixxFrom: sixxString.

	self should: [runArray runs = #(1 2 1)].
	self should: [runArray values = #(1 2 3)]
	