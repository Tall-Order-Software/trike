baselines
baseline: spec
    <baseline>

    spec for: #common do: [
        spec
            package: 'Logic-Boolean';
				package: 'Logic-Boolean-Tests' with: [ spec requires: #('Logic-Boolean') ]].
