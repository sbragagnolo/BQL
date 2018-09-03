generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(86 '--' 8) #(82 'ALTER' 14) #(82 'AND' 22) #(82 'AS' 69) #(82 'ASC' 59) #(82 'AT' 71) #(82 'BETWEEN' 42) #(82 'BY' 60) #(82 'COLLECTION' 17) #(82 'CREATE' 16) #(82 'DAYS' 50) #(82 'DELETE' 3) #(82 'DESC' 49) #(82 'DOMAIN' 61) #(82 'DROP' 30) #(82 'ETHER' 56) #(82 'FALSE' 81) #(82 'FINNEY' 55) #(82 'FROM' 64) #(82 'HOURS' 53) #(82 'IN' 47) #(82 'INDEX' 20) #(82 'INNER' 76) #(82 'INTERSECT' 63) #(82 'IS' 43) #(82 'JOIN' 77) #(82 'LEFT' 74) #(82 'LIKE' 54) #(82 'LIMIT' 45) #(82 'MAPPED' 65) #(82 'MINUS' 68) #(82 'MINUTES' 52) #(82 'NOT' 41) #(82 'NULL' 40) #(82 'ON' 46) #(82 'OR' 24) #(82 'ORDER' 72) #(82 'OUTER' 73) #(82 'RIGHT' 70) #(82 'SCHEMA' 12) #(82 'SECONDS' 57) #(82 'SELECT' 67) #(82 'SZABO' 58) #(82 'TO' 66) #(82 'TRUE' 81) #(82 'UNION' 62) #(82 'WEEKS' 51) #(82 'WEI' 48) #(82 'WHERE' 75) #(82 'YEARS' 11))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap