versions
version034: spec
	<version: '0.3.4' imports: #('0.3-baseline')>

	spec for: #common do:[
		spec blessing: #beta.
		
		spec 
			package: 'SIXX-Core' with: 'SIXX-Core-mu.14';
			package: 'SIXX-ParserAdapter' with: 'SIXX-ParserAdapter-mu.10';
			package: 'SIXX-InOut-Common' with: 'SIXX-InOut-Common-mu.14';
			package: 'SIXX-Examples' with: 'SIXX-Examples-mu.3';
			package: 'SIXX-Test' with: 'SIXX-Test-mu.11'.
	].
	spec for: #squeakCommon do:[
		spec blessing: #beta.
		spec
			project: 'XMLSupport' with: '1.0'.
		spec 
			package: 'SIXX-Squeak' with: 'SIXX-Squeak-mu.2';
			package: 'SIXX-InOut-Squeak' with: 'SIXX-InOut-Squeak-mu.9'.
	].
