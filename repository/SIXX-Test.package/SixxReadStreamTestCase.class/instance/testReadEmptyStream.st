tests
testReadEmptyStream
	| stream empStream |
	empStream := (ReadStream on: '').
	self
		should: [empStream size = 0].
	stream :=  SixxReadStream on: empStream.
	
	self
		should: [stream position = 0].
	self
		should: [stream atEnd].
	self
		should: [stream next isNil].
	