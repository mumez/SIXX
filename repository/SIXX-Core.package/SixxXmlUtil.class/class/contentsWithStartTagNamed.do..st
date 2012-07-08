actions
contentsWithStartTagNamed: tagName do: block 
	"backward compatibility"
	| wStr |
	wStr := WriteStream on: (String new: 16).
	self writeStartTagNamed: tagName attributesDo: block on: wStr.
	^ wStr contents