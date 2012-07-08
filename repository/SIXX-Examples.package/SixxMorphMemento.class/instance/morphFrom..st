private
morphFrom: aString
	| byteStr oStr |
	byteStr := (Base64MimeConverter mimeDecodeToBytes: (ReadStream on: aString)).
	oStr := self streamClass on: byteStr.
	^oStr next
