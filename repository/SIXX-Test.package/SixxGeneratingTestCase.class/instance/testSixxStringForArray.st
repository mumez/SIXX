tests
testSixxStringForArray
	| arr expectedStr |
	expectedStr := '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="1" sixx.type="SmallInteger" >10</sixx.object>
	<sixx.object sixx.id="2" sixx.type="SmallInteger" >20</sixx.object>
	<sixx.object sixx.id="3" sixx.type="SmallInteger" >30</sixx.object>
</sixx.object>
'.
	arr := Array new: 3.
	arr at: 1 put: 10.
	arr at: 2 put: 20.
	arr at: 3 put: 30.
	self
		should: [arr sixxString = expectedStr]