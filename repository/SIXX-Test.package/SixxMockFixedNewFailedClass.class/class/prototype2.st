for tests
prototype2
	"self prototype2"
	| inst |
	inst := self basicNew.
	inst att1: 3.
	inst att2: 'Four'.
	inst att3Block: [:this :is | 'block2'].
	^inst