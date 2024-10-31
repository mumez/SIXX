baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
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
			group: 'Examples' with: #('SIXX-Examples');
			group: 'Tests' with: #('SIXX-Test')].
	spec for: #squeak do:[
		spec package: 'SIXX-Squeak'.
		spec package: 'SIXX-ParserAdapter'.
		spec package: 'SIXX-InOut-Common' with: [spec includes: 'SIXX-InOut-Squeak'].
		spec package: 'SIXX-InOut-Squeak' with: [spec requires: #('SIXX-Squeak' 'SIXX-InOut-Common')].
	].
	spec for: #pharo do:[
		self xmlParser: spec.
		spec package: 'SIXX-Pharo'.
		spec package: 'SIXX-ParserAdapter' with: [spec requires: 'XMLParser'].
		spec package: 'SIXX-InOut-Common'.
	].
	spec for: #(#'pharo1.x' #'pharo2.x' #'pharo3.x' #'pharo4.x' #'pharo5.x' #'pharo6.x' #'pharo7.x' #'pharo8.x' #'pharo9.x' #'pharo10.x') do:[
		spec package: 'SIXX-InOut-Common' with: [spec includes: 'SIXX-InOut-Pharo'].
		spec package: 'SIXX-InOut-Pharo' with: [spec requires: #('SIXX-Pharo' 'SIXX-InOut-Common')].
	].
	spec for: #(#'pharo11.x' #'pharo12.x') do:[
		spec package: 'SIXX-InOut-Common' with: [spec includes: 'SIXX-InOut-Pharo110'].
		spec package: 'SIXX-InOut-Pharo110' with: [spec requires: #('SIXX-Pharo' 'SIXX-InOut-Common')].
	].