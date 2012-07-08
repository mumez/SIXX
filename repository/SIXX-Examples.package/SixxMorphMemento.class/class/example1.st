examples
example1
	"SixxMorphMemento example1"
	"Create a SIXX string from an StarMorph"

	| morph memento |
	morph := StarMorph new openInWorld.
	memento := SixxMorphMemento on: morph.
	^memento sixxString