examples
example6
	"SixxExamples example6"
	"Read object data from an external file"
	
	| srs objects |
	srs := SixxReadStream readOnlyFileNamed: ('obj.sixx').
	objects := OrderedCollection new.
	[srs atEnd] whileFalse: [objects add: srs next].
	srs close.
	objects inspect.
