generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(83 '--' 3) #(79 'ALTER' 11) #(79 'AND' 21) #(79 'AS' 66) #(79 'ASC' 58) #(79 'AT' 59) #(79 'BETWEEN' 46) #(79 'BY' 69) #(79 'COLLECTION' 12) #(79 'CREATE' 17) #(79 'DAYS' 48) #(79 'DELETE' 4) #(79 'DESC' 57) #(79 'DOMAIN' 60) #(79 'DROP' 19) #(79 'ETHER' 54) #(79 'FALSE' 78) #(79 'FINNEY' 53) #(79 'FROM' 61) #(79 'HOURS' 51) #(79 'IN' 52) #(79 'INNER' 68) #(79 'INTERSECT' 64) #(79 'IS' 41) #(79 'JOIN' 72) #(79 'LEFT' 74) #(79 'LIKE' 44) #(79 'LIMIT' 56) #(79 'MINUS' 65) #(79 'MINUTES' 50) #(79 'NOT' 39) #(79 'NULL' 42) #(79 'ON' 73) #(79 'OR' 23) #(79 'ORDER' 67) #(79 'OUTER' 71) #(79 'RIGHT' 70) #(79 'SCHEMA' 38) #(79 'SECONDS' 55) #(79 'SELECT' 45) #(79 'SZABO' 47) #(79 'TRUE' 78) #(79 'UNION' 63) #(79 'WEEKS' 49) #(79 'WEI' 43) #(79 'WHERE' 62) #(79 'YEARS' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap