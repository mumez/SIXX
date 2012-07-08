actions
contentsWithEmptyTagNamed: tagName do: block 
	| wStr |
	wStr := WriteStream on: (String new: 16).
	self writeEmptyTagNamed: tagName attributesDo: block on: wStr.
	^ wStr contents