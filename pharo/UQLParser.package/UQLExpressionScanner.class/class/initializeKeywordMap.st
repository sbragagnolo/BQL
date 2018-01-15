generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(80 'and' 21) #(80 'asc' 48) #(80 'at' 73) #(80 'between' 41) #(80 'bitcash' 65) #(80 'bitcoin' 63) #(80 'by' 58) #(80 'collection' 13) #(80 'connection' 60) #(80 'create' 18) #(80 'days' 49) #(80 'delete' 4) #(80 'desc' 44) #(80 'domain' 62) #(80 'ether' 55) #(80 'ethereum' 12) #(80 'false' 79) #(80 'finney' 54) #(80 'from' 67) #(80 'hours' 52) #(80 'in' 69) #(80 'intersect' 66) #(80 'is' 42) #(80 'join' 75) #(80 'left' 71) #(80 'like' 46) #(80 'limit' 53) #(80 'litecoin' 64) #(80 'minus' 59) #(80 'minutes' 51) #(80 'mongodb' 34) #(80 'not' 40) #(80 'null' 39) #(80 'on' 72) #(80 'or' 23) #(80 'order' 70) #(80 'right' 68) #(80 'seconds' 56) #(80 'select' 17) #(80 'sql' 45) #(80 'szabo' 57) #(80 'true' 79) #(80 'union' 61) #(80 'weeks' 50) #(80 'wei' 47) #(80 'where' 74) #(80 'years' 11) #(84 '--' 3))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap