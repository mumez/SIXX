*sixx-inout-common-converting
shortHexString
	| sz stream |
	sz := self size.
	stream := WriteStream on: (String new: sz * 2).
	1 to: sz do: [:idx | 
		| elem |
		elem := (self at: idx).
		elem < 16 ifTrue: [stream nextPut: $0].
		stream nextPutAll:  elem shortHexString].
	^ stream contents  