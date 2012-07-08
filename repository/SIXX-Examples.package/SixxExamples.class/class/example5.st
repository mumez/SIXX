examples
example5
	"SixxExamples example5"
	"Write object data to an external file"
	
	| sws |
	sws := SixxWriteStream newFileNamed: ('obj.sixx').
	sws nextPut: Color random.
	sws nextPut: Rectangle fromUser.
	sws nextPut: View subclasses.
	sws nextPutAll: View subclasses. "note the differences"
	sws close.
