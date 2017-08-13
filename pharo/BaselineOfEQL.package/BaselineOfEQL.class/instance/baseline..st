baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'SmaCC'
				with: [ spec
						repository: 'github://ThierryGoubier/SmaCC';
						loads: 'SmaCC-GLR-Runtime' ].
			spec package: 'EQLParser' with: [ spec requires: 'SmaCC-Runtime' ] ]