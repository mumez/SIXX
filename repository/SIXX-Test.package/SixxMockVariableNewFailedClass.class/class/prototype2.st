for tests
prototype2
	"self prototype2"
	| inst |
	inst := self basicNew: 3.
	1 to: 3 do: [:idx | inst at: idx put: idx printString].
	inst att1: 3.
	inst att2: 'Four'.
	inst att3Block: [:this :is | 'block2'].
	^inst