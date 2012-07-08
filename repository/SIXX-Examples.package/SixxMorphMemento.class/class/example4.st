examples
example4
	"SixxMorphMemento example4"
	"Read a Mprph from an external file"

	| srs memento morph |
	srs := SixxReadStream readOnlyFileNamed: ('morph.sixx').
	memento := srs next.
	srs close.
	morph := memento morph.
	morph openInWorld.
	morph inspect.