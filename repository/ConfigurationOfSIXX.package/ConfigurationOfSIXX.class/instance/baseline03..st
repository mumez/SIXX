baselines
baseline03: spec
	<version: '0.3-baseline'>

	spec for: #common do:[
		spec blessing: #baseline.
		spec repository: 'http://www.squeaksource.com/SIXX'.
		spec repository: 'http://squeaksource.blueplane.jp/SIXX'.
		spec description: 'SIXX 0.3 baseline'.
		
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
		
		spec
			project: 'XMLSupport' with: [
				spec
					className: 'ConfigurationOfXMLSupport';
					repository: 'http://www.squeaksource.com/MetacelloRepository' ].
		
		spec package: 'SIXX-Squeak'.
		spec package: 'SIXX-ParserAdapter' with: [spec requires: 'XMLSupport'].
		spec package: 'SIXX-InOut-Common' with: [spec includes: 'SIXX-InOut-Squeak'].
		spec package: 'SIXX-InOut-Squeak' with: [spec requires: #('SIXX-Squeak' 'SIXX-InOut-Common')].
	].
