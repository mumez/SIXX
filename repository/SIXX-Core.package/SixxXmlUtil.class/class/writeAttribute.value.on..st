actions
writeAttribute: attName value: attValue on: aWriteStream 
	attValue isNil ifTrue: [^self].
	aWriteStream nextPutAll: attName;
		 nextPutAll: '="';
		 nextPutAll: attValue;
		 nextPutAll: '" '.
	^aWriteStream