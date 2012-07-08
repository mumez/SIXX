private
isSameContentsDictionary: dictA with: dictB
	dictA size = dictB size ifFalse: [^false].

	dictA keysAndValuesDo: [:keyA :valueA |
		((dictB at: keyA) storeString = valueA storeString) ifFalse: [^false]
	].

	^true