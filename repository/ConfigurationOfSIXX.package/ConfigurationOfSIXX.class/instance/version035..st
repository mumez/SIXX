versions
version035: spec
	<version: '0.3.5' imports: #('0.3-baseline')>

	spec for: #common do:[
		spec blessing: #beta.
		
		spec 
			package: 'SIXX-Core' with: 'SIXX-Core-MasashiUmezawa.15';
			package: 'SIXX-ParserAdapter' with: 'SIXX-ParserAdapter-MasashiUmezawa.12';
			package: 'SIXX-InOut-Common' with: 'SIXX-InOut-Common-mu.14';
			package: 'SIXX-Examples' with: 'SIXX-Examples-mu.3';
			package: 'SIXX-Test' with: 'SIXX-Test-MasashiUmezawa.13'.
	].
	spec for: #squeakCommon do:[
		spec blessing: #beta.
		spec
			project: 'XMLSupport' with: '1.1.7'.
		spec 
			package: 'SIXX-Squeak' with: 'SIXX-Squeak-mu.2';
			package: 'SIXX-InOut-Squeak' with: 'SIXX-InOut-Squeak-mu.9'.
	].
