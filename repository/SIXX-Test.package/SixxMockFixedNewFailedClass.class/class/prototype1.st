for tests
prototype1
	"self prototype1"
	| inst |
	inst := self basicNew.
	inst att1: 1.
	inst att2: 'TWO'.
	inst att3Block: [:this | 'is block'].
	^inst