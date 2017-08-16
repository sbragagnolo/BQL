generated-initialization
initializeKeywordMap
	keywordMap := Dictionary new.
	#(#(74 'and' 51) #(74 'buffer' 66) #(74 'by' 40) #(74 'create' 68) #(74 'days' 45) #(74 'delete' 58) #(74 'domain' 65) #(74 'ether' 49) #(74 'false' 73) #(74 'finney' 52) #(74 'from' 62) #(74 'hours' 48) #(74 'in' 63) #(74 'like' 36) #(74 'limit' 41) #(74 'minutes' 47) #(74 'or' 39) #(74 'order' 44) #(74 'seconds' 50) #(74 'select' 61) #(74 'szabo' 43) #(74 'true' 73) #(74 'weeks' 46) #(74 'wei' 42) #(74 'where' 56) #(74 'years' 13))
		do: [ :each | 
			(keywordMap at: each first ifAbsentPut: [ Dictionary new ])
				at: (each at: 2)
				put: each last ].
	^ keywordMap