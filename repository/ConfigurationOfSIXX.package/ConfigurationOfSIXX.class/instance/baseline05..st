baselines
baseline05: spec
	<version: '0.5-baseline'>

	spec for: #common do:[
		spec blessing: #baseline.
		spec repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/SIXX/main'.
		spec description: 'SIXX 0.5 baseline'.
		
		spec package: 'SIXX-ParserAdapter'.
		spec package: 'SIXX-InOut-Common'.
		spec package: 'SIXX-Core' with: [spec includes: #('SIXX-ParserAdapter' 'SIXX-InOut-Common')].
		
		spec package: 'SIXX-Examples' 
			with: [spec requires: #('SIXX-ParserAdapter' 'SIXX-InOut-Common' 'SIXX-Core')].
		spec package: 'SIXX-Test' 
			with: [spec requires: #('SIXX-ParserAdapter' 'SIXX-InOut-Common' 'SIXX-Core')].
			
		spec
			group: 'default' with: #('Core' 'Examples' 'Tests');
			group: 'Core' with: #('SIXX-ParserAdapter' 'SIXX-InOut-Common' 'SIXX-Core');
			group: 'Examples' with: #('SIXX-Examples' );
			group: 'Tests' with: #('SIXX-Test' ).	
	].
	spec for: #squeakCommon do:[
		spec package: 'SIXX-Squeak'.
	].
	spec for: #squeak do:[
		spec
			package: 'XML-Parser' with: [
				spec file: 'XML-Parser-topa.39';
					repository: 'http://source.squeak.org/squeak51'
			].

		spec package: 'SIXX-ParserAdapter' with: [spec requires: 'XML-Parser'].
		spec package: 'SIXX-InOut-Common' with: [spec includes: 'SIXX-InOut-Squeak'].
		spec package: 'SIXX-InOut-Squeak' with: [spec requires: #('SIXX-Squeak' 'SIXX-InOut-Common')].
	].
	spec for: #pharo do:[
		spec
			project: 'XMLParser' with: [
				spec
					className: 'ConfigurationOfXMLParser';
					versionString: #stable;
					repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParser/main' ].
		
		spec package: 'SIXX-ParserAdapter' with: [spec requires: 'XMLParser'].
		spec package: 'SIXX-InOut-Common' with: [spec includes: 'SIXX-InOut-Pharo'].
		spec package: 'SIXX-InOut-Pharo' with: [spec requires: #('SIXX-Squeak' 'SIXX-InOut-Common')].
	].
