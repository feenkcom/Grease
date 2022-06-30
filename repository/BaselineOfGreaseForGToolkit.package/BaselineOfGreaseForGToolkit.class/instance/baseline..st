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
				package: 'Grease-Pharo90-Slime' with: [ spec requires: #('Grease-Core') ];
				package: 'Grease-Tests-Slime' with: [ spec requires: #('Grease-Pharo90-Slime') ] ]