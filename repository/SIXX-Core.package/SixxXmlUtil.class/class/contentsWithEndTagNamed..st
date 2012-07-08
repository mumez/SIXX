actions
contentsWithEndTagNamed: tagName
	| wStr |
	wStr := WriteStream on: (String new: 16).
	self writeEndTagNamed: tagName on: wStr.
	^wStr contents