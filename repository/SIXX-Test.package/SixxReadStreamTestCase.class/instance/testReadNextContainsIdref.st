tests
testReadNextContainsIdref
	| str stream firstObj secondObj thirdObj |
	str := '<?xml version="1.0" encoding="utf-8"?>
<sixx sixx.version="1.0">
	<sixx.object sixx.id="0" sixx.type="Array" >
		<sixx.object sixx.id="1" sixx.type="SmallInteger" >10</sixx.object>
		<sixx.object sixx.id="2" sixx.type="SmallInteger" >20</sixx.object>
		<sixx.object sixx.id="3" sixx.type="SmallInteger" >30</sixx.object>
	</sixx.object>
	<sixx.object sixx.id="4" sixx.type="OrderedCollection" >
		<sixx.object sixx.idref="0" ></sixx.object>
	</sixx.object>
	<sixx.object sixx.id="5" sixx.type="Array" >
		<sixx.object sixx.idref="1" ></sixx.object>
		<sixx.object sixx.idref="2" ></sixx.object>
		<sixx.object sixx.idref="3" ></sixx.object>
	</sixx.object>
</sixx>'.
	stream := SixxReadStream on: (ReadStream on: str).
	self
		should: [stream size = 3].
	firstObj := stream next.
	secondObj := stream next.
	thirdObj := stream next.
	self
		should: [firstObj = #(10 20 30 )].
	self
		should: [(secondObj at: 1)
				== firstObj].
	self
		should: [thirdObj = #(10 20 30 )
				and: [thirdObj ~~ firstObj]]