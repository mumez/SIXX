for tests
prototype1
	"self prototype1"
	| inst |
	inst := self basicNew: 3.
	1 to: 3 do: [:idx | inst at: idx put: idx printString].
	inst att1: 1.
	inst att2: 'TWO'.
	inst att3Block: [:this | 'is block'].
	^inst