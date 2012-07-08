private
morphForStore
	| file con |
	self morph allMorphsDo: [:m | m prepareToBeSaved].
	file := RWBinaryOrTextStream on: (ByteArray new: 5000).
	file binary.
	(self streamClass on: file)	nextPut: self morph.
	con := Base64MimeConverter mimeEncode: file reset.
	file close.
	^con contents
