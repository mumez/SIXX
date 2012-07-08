private-initialize
initConvertCharDict
	convertCharDict := Dictionary new.
	0 to: 47 do: [:each | convertCharDict at: each put: '&#', each printString, ';'].
	convertCharDict 
		at: $& codePoint put: '&amp;';
		at: $< codePoint put: '&lt;';
		at: $> codePoint put: '&gt;';
		at: $' codePoint put: '&apos;';
		at: $" codePoint put: '&quot;'.
	convertCharDict 
		removeKey: Character space codePoint;
		removeKey: Character tab codePoint;
		removeKey: Character cr codePoint;
		removeKey: Character lf codePoint.
	convertCharDict 
		removeKey: $/ codePoint;
		removeKey: $+ codePoint;
		removeKey: $- codePoint;
		removeKey: $. codePoint.