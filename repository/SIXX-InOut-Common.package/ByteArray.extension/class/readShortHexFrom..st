*sixx-inout-common-instance creation
readShortHexFrom: aStream
	| sz inst |
	sz := aStream size // 2.
	inst := self new: sz.
	1 to: sz do: [:idx | 
		inst at: idx put: (Integer readShortHexFrom: (ReadStream on: (aStream next: 2)))
	].
	^ inst