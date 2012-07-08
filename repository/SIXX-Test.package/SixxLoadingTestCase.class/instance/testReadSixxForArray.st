tests
testReadSixxForArray
	| sixxString arr |
	sixxString := '<sixx.object sixx.id="0" sixx.type="Array" >
	<sixx.object sixx.id="1" sixx.type="SmallInteger" >10</sixx.object>
	<sixx.object sixx.id="2" sixx.type="SmallInteger" >20</sixx.object>
	<sixx.object sixx.id="3" sixx.type="SmallInteger" >30</sixx.object>
</sixx.object>
'.
	arr := Object readSixxFrom: sixxString.
	self
		should: [arr size = 3].
	self
		should: [(arr at: 1)
				= 10].
	self
		should: [(arr at: 2)
				= 20].
	self
		should: [(arr at: 3)
				= 30]