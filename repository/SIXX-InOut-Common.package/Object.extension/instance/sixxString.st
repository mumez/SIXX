*sixx-inout-common-printing
sixxString
	| wStr |
	wStr := WriteStream on: (String new: 128).
	self sixxOn: wStr.
	^wStr contents