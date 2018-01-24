generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(86 '--' 8) #(82 'and' 22) #(82 'asc' 49) #(82 'at' 76) #(82 'between' 42) #(82 'bitcash' 67) #(82 'bitcoin' 65) #(82 'by' 59) #(82 'collection' 17) #(82 'connection' 62) #(82 'create' 16) #(82 'days' 50) #(82 'delete' 3) #(82 'desc' 45) #(82 'domain' 69) #(82 'drop' 30) #(82 'ether' 56) #(82 'ethereum' 12) #(82 'false' 81) #(82 'finney' 55) #(82 'from' 71) #(82 'hours' 53) #(82 'in' 75) #(82 'intersect' 61) #(82 'is' 43) #(82 'join' 74) #(82 'left' 70) #(82 'like' 47) #(82 'limit' 54) #(82 'litecoin' 66) #(82 'minus' 64) #(82 'minutes' 52) #(82 'modify' 14) #(82 'mongodb' 20) #(82 'not' 41) #(82 'null' 40) #(82 'on' 73) #(82 'or' 24) #(82 'order' 60) #(82 'right' 72) #(82 'seconds' 57) #(82 'select' 63) #(82 'sql' 46) #(82 'szabo' 58) #(82 'true' 81) #(82 'union' 68) #(82 'weeks' 51) #(82 'wei' 48) #(82 'where' 77) #(82 'years' 11))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap