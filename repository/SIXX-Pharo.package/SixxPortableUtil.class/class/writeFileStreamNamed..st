actions
writeFileStreamNamed: aFilename
	"#Pharo Specific#"
	| fileRef |
	fileRef := aFilename asFileReference.
	fileRef exists ifTrue: [ fileRef delete ].
	^fileRef writeStream.