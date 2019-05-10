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
			spec package: 'UQLParser' with: [ spec requires: 'SmaCC' ] ]
