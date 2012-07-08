tests
testReadSixxWithNoTypeDefinitionFound
	| str catched origUseReduced |
	str :=  '<sixx.object sixx.id="0" sixx.type="SixxMockPerson" >
	<sixx.object sixx.id="1" sixx.name="name" sixx.type="String" >john</sixx.object>
	<sixx.object sixx.name="requests" sixx.type="UndefinedObject" />
	<sixx.object sixx.name="partners" sixx.type="UndefinedObject" />
</sixx.object>
'.
	origUseReduced := SixxSettings useReducedTags.
	SixxSettings useReducedTags: true.

	self should: [(Object readSixxFrom: str)
			= nil].
	catched := false.
	self
		should: 
			[[Object readSixxFrom: str]
				on: SixxNoTypeDefinition do: [:ex | catched := true].
			catched].

	SixxSettings useReducedTags: origUseReduced.