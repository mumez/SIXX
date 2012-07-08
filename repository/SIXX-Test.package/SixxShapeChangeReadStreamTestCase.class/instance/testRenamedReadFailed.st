tests
testRenamedReadFailed
	"SixxShapeChangeReadStreamTestCase debug: #testRenamedReadFailed"
	| data oldSixx srs obj |
	data := Array with: 1 with:2 with: (Array with:1 with:3 with:1).
	oldSixx := (self sixxFrom: data) copyReplaceAll: 'SmallInteger' with: 'SmallIntegerOLD'.
	srs := SixxShapeChangeReadStream on: (ReadStream on: oldSixx).
	obj := srs next.
	srs close.
	self shouldnt: [obj = data].
	self should: [obj = #(nil nil #(nil nil nil))]