generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(82 '--' 3) #(78 'and' 21) #(78 'at' 73) #(78 'between' 45) #(78 'bitcash' 59) #(78 'bitcoin' 63) #(78 'by' 55) #(78 'collection' 13) #(78 'connection' 60) #(78 'create' 12) #(78 'days' 47) #(78 'delete' 4) #(78 'domain' 67) #(78 'ether' 53) #(78 'ethereum' 19) #(78 'false' 77) #(78 'finney' 52) #(78 'from' 71) #(78 'hours' 50) #(78 'in' 72) #(78 'intersect' 58) #(78 'is' 40) #(78 'join' 69) #(78 'left' 68) #(78 'like' 51) #(78 'limit' 43) #(78 'litecoin' 64) #(78 'minus' 61) #(78 'minutes' 49) #(78 'mongodb' 44) #(78 'not' 38) #(78 'null' 41) #(78 'on' 66) #(78 'or' 23) #(78 'order' 56) #(78 'right' 57) #(78 'seconds' 54) #(78 'select' 17) #(78 'sql' 62) #(78 'szabo' 46) #(78 'true' 77) #(78 'union' 65) #(78 'weeks' 48) #(78 'wei' 42) #(78 'where' 70) #(78 'years' 10))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap