tests
testSixxStringForOrdredCollection
	| expectedStr col |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="OrderedCollection" >
	<sixx.object sixx.id="1" sixx.type="SmallInteger" >10</sixx.object>
	<sixx.object sixx.id="2" sixx.type="SmallInteger" >20</sixx.object>
	<sixx.object sixx.id="3" sixx.type="SmallInteger" >30</sixx.object>
</sixx.object>
'.
	col := OrderedCollection new.
	col add: 10.
	col add: 20.
	col add: 30.
	self
		should: [col sixxString = expectedStr]