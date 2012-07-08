reading
peek
	| nextObj |
	nextObj := self next.
	self privatePosition: self position - 1.
	^ nextObj