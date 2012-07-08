tests
testRenamedRead
	"SixxShapeChangerTestCase debug: #testRenamedRead"
	| data oldSixx obj |
	data := Array with: 1 with:2 with: (Array with:1 with:3 with:1).
	oldSixx := data sixxString copyReplaceAll: 'SmallInteger' with: 'SmallIntegerOLD'.

	SixxContext evaluate: [
		obj :=  Object readSixxFrom: oldSixx.
	] shapeChangersBy: [:shapeChangers | 
		shapeChangers at: #SmallIntegerOLD put: SmallInteger.
	].

	self should: [obj = data]