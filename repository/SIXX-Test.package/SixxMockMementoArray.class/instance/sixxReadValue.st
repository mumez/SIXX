sixx-reading
sixxReadValue
	| inst |
	inst := SixxMockCustomWriteObject new.
	inst name: (self at: 1).
	inst time: (self at: 2).
	^inst