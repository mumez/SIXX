tests
testReadSixxForObjectWithId
	"SixxLoadingTestCase debug: #testReadSixxForObjectWithId"
	| sixxString array |
	sixxString :=  '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="a" sixx.type="SixxMockObjectWithId" >
		<sixx.object sixx.id="2" sixx.name="id" sixx.type="String" >a</sixx.object>
		<sixx.object sixx.id="3" sixx.name="data" sixx.type="String" >aaa</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="b" sixx.type="SixxMockObjectWithId" >
		<sixx.object sixx.id="5" sixx.name="id" sixx.type="String" >b</sixx.object>
		<sixx.object sixx.id="6" sixx.name="data" sixx.type="String" >bbb</sixx.object>
	</sixx.object>
	<sixx.object sixx.idref="a" ></sixx.object>
</sixx.object>
'.
	array := Object readSixxFrom: sixxString.

	self should: [(array at: 1) = (array at: 3)].
	self shouldnt: [(array at: 1) = (array at: 2)].

	self should: [(array at: 1) id = 'a'].
	self should: [(array at: 1) data = 'aaa'].
	self should: [(array at: 2) id = 'b'].
	self should: [(array at: 2) data = 'bbb'].