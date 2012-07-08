tests
testShapeChangedReadCircularReference
	"SixxShapeChangerTestCase debug: #testShapeChangedReadCircularReference"
	| oldSixx obj |
	oldSixx :=  '<sixx.object sixx.id="0" sixx.type="SixxMockPersonOLD" >
	<sixx.object sixx.id="1" sixx.name="fullName" sixx.type="String" >A</sixx.object>
	<sixx.object sixx.id="2" sixx.name="requests" sixx.type="OrderedCollection" >
		<sixx.object sixx.id="3" sixx.type="SixxMockRequest" >
			<sixx.object sixx.id="4" sixx.name="id" sixx.type="SmallInteger" >1</sixx.object>
			<sixx.object sixx.name="owner" sixx.idref="0" />
		</sixx.object>
		<sixx.object sixx.id="5" sixx.type="SixxMockRequest" >
			<sixx.object sixx.id="6" sixx.name="id" sixx.type="SmallInteger" >2</sixx.object>
			<sixx.object sixx.id="7" sixx.name="owner" sixx.type="SixxMockPersonOLD" >
				<sixx.object sixx.id="8" sixx.name="fullName" sixx.type="String" >B</sixx.object>
				<sixx.object sixx.name="requests" sixx.type="UndefinedObject" />
				<sixx.object sixx.id="9" sixx.name="partners" sixx.type="OrderedCollection" >
					<sixx.object sixx.idref="0" />
				</sixx.object>
			</sixx.object>
		</sixx.object>
	</sixx.object>
	<sixx.object sixx.name="partners" sixx.type="UndefinedObject" />
</sixx.object>
'.

	SixxContext evaluate: [
		obj :=  Object readSixxFrom: oldSixx.		
	] shapeChangersBy: [:shapeChangers | 
		shapeChangers at: #SixxMockPersonOLD put: SixxMockPersonShapeChanger
	].
 
	self should: [obj class = SixxMockPerson].
	self should: [obj name = 'A'].
	self should: [obj requests size = 2].
	self should: [(obj requests detect: [:each | each id = 1]) owner = obj].
	self should: [(obj requests detect: [:each | each id = 2]) owner name = 'B'].
	self should: [(obj requests detect: [:each | each id = 2]) owner partners size = 1].
	self should: [((obj requests detect: [:each | each id = 2]) owner partners at: 1) = obj].