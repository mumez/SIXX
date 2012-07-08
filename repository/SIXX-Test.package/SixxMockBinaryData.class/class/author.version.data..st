instance creation
author: author version: version data: binaryData
	"SixxMockBinaryData author: 'MU' version: '0.1' data: #(1 2 3)"
	| inst idx |
	inst := self new: binaryData size.
	idx := 0.
	binaryData do: [:each | inst at: (idx := idx + 1) put: each].
	inst author: author.
	inst version: version.
	^inst

