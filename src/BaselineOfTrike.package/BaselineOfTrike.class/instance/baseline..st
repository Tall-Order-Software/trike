baselines
baseline: spec
    <baseline>

    spec for: #common do: [
        spec
            package: 'Trike-Core';
				package: 'Trike-Core-Tests' with: [ spec requires: #('Trike-Core') ];
            package: 'Logic-Boolean'].
