*SIXX-Pharo
writeFileStreamNamed: aFilename
	"#Pharo Specific#"
	^aFilename asFileReference writeStream.