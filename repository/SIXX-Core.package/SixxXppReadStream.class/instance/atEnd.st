testing
atEnd
	(cachedObjects includesKey: position + 1) ifTrue: [ ^ false ].
	self checkForStart.
	SixxConstants rootTagNames do: [ :tagName | (parser isEndTag: tagName) ifTrue: [ parser next ] ].
	^ parser isEndDocument