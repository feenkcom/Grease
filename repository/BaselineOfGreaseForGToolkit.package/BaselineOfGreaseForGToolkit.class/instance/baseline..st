baselines
baseline: spec
	<baseline>
	
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: 'Grease-Core';
				package: 'Grease-Tests-Pharo-Core' with: [ spec requires: #('Grease-Tests-Core') ];
				package: 'Grease-Tests-Core' with: [ spec requires: #('Grease-Pharo100-Core')];
				package: 'Grease-Pharo100-Core' with: [ spec requires: #('Grease-Core') ];
				package: 'Grease-Pharo110-Slime-Core' with: [ spec requires: #('Grease-Core') ];
				package: 'Grease-Pharo110-Slime-Portability' with: [ spec requires: #('Grease-Pharo110-Slime-Core') ];
				package: 'Grease-Tests-Pharo-Slime' with: [ spec requires: #('Grease-Pharo110-Slime-Portability') ] ]