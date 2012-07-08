private
registerToDetectionMaps
	| inst |
	inst := self new.
	self constantsDetectionMap at: inst objectTagName put: self.
	self constantsDetectionMapByRoot at: inst rootTagName put: self