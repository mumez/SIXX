*SIXX-Pharo
readFileStreamNamed: aFilename
	"#Pharo Specific#"
	^aFilename asFileReference readStream.