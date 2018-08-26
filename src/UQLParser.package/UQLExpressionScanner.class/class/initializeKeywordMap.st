generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(80 'ALTER' 29) #(80 'AND' 21) #(80 'AS' 62) #(80 'ASC' 58) #(80 'AT' 67) #(80 'BETWEEN' 41) #(80 'BY' 70) #(80 'COLLECTION' 18) #(80 'CREATE' 17) #(80 'DAYS' 49) #(80 'DELETE' 4) #(80 'DESC' 48) #(80 'DOMAIN' 66) #(80 'DROP' 12) #(80 'ETHER' 55) #(80 'FALSE' 79) #(80 'FINNEY' 54) #(80 'FROM' 59) #(80 'HOURS' 52) #(80 'IN' 46) #(80 'INDEX' 45) #(80 'INNER' 73) #(80 'INTERSECT' 60) #(80 'IS' 42) #(80 'JOIN' 74) #(80 'LEFT' 75) #(80 'LIKE' 53) #(80 'LIMIT' 44) #(80 'MINUS' 61) #(80 'MINUTES' 51) #(80 'NOT' 40) #(80 'NULL' 39) #(80 'ON' 63) #(80 'OR' 23) #(80 'ORDER' 68) #(80 'OUTER' 72) #(80 'RIGHT' 71) #(80 'SCHEMA' 34) #(80 'SECONDS' 56) #(80 'SELECT' 64) #(80 'SZABO' 57) #(80 'TRUE' 79) #(80 'UNION' 65) #(80 'WEEKS' 50) #(80 'WEI' 47) #(80 'WHERE' 69) #(80 'YEARS' 11) #(84 '--' 3))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap