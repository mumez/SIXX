examples
example7
	"SixxExamples example7"

	"Write object data to an external file"

	| sws dic |
	sws := SixxWriteStream newFileNamed: 'obj2.sixx'.
	sws nextPut: Color red.
	sws nextPut: Rectangle fromUser.
	sws nextPut: true.
	sws nextPut: false.
	sws nextPut: $a.
	sws nextPut: $(.
	sws nextPut: (OrderedCollection with: 1 with: Date today).
	sws nextPut: Time now.
	sws nextPut: nil.
	sws nextPut: (ByteArray 
				with: 10
				with: 20
				with: 30).
	dic := Dictionary new.
	dic at: 'first' put: '111'.
	dic at: 'second' put: '222'.
	sws nextPut: dic.
	sws close