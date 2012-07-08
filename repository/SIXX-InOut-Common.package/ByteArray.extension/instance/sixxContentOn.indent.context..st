*sixx-inout-common-printing
sixxContentOn: aStream indent: level context: dictionary 
	1 to: self size do: [:idx | 
		| elem |
		elem := (self at: idx).
		elem < 16 ifTrue: [aStream nextPut: $0].
		aStream nextPutAll: elem shortHexString].
	