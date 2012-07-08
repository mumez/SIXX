constants-root
sixxStartTag
	^SixxXmlUtil contentsWithStartTagNamed: self rootTagName do: [:wStr | 
		wStr nextPutAll: self versionTagName;
		 nextPutAll: '="';
		 nextPutAll: self sixxVersion;
		 nextPutAll: '"'.
	] 