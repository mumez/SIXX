accessing
suppressNilWrite
	suppressNilWrite ifNil: [suppressNilWrite := true].
	^suppressNilWrite