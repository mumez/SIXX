examples
example2
	"SixxMorphMemento example2"
	"Read a SIXX string and restore a StarMorph. Original StarMorph is still there"

	| xmlMorphString memento morph |
	xmlMorphString := self example1.
	memento := Object readSixxFrom: xmlMorphString.
	morph := memento morph.
	morph openInWorld.
	morph color: Color random.
	morph position: (morph position + (20@20)).
	^morph