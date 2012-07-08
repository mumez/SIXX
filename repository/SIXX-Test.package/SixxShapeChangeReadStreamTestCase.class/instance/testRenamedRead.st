tests
testRenamedRead
	"SixxShapeChangeReadStreamTestCase debug: #testRenamedRead"
	| data oldSixx srs obj |
	data := Array with: 1 with:2 with: (Array with:1 with:3 with:1).
	oldSixx := (self sixxFrom: data) copyReplaceAll: 'SmallInteger' with: 'SmallIntegerOLD'.
	srs := SixxShapeChangeReadStream on: (ReadStream on: oldSixx).
	srs shapeChangers at: #SmallIntegerOLD put: SmallInteger.
	obj := srs next.
	srs close.
	self should: [obj = data]