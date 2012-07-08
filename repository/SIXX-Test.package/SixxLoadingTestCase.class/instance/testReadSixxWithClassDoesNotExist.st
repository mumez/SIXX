tests
testReadSixxWithClassDoesNotExist
	| str catched |
	str := '<sixx.object sixx.id="0" sixx.type="doesNotExistString" >abcde</sixx.object>
'.
	self
		should: [(Object readSixxFrom: str)
				= nil].
	catched := false.
	self
		should: [[Object readSixxFrom: str]
				on: SixxClassNotFound
				do: [:ex | catched := true].
			catched]