examples
example3
	"SixxMorphMemento example3"
	"Write object data to an external file"

	| sws  |
	sws := SixxWriteStream newFileNamed: ('morph.sixx').
	sws nextPut: (SixxMorphMemento on: (BouncingAtomsMorph new position: 200@200)).
	sws close.