generated
definitionComment
"### Scanner part
<decimalnumber>: [0-9]+ ;
<hexnumber>: 0x[0-9a-fA-F]+ ;
<realnumber>: <decimalnumber>? [\.] <decimalnumber> ; #  added to support real numbers (not in the grammar but apear in the contracts)	
<hexliteral>: hex ( [""] ( [0-9a-fA-F][0-9a-fA-F] )* [""] |  ['] ( [0-9a-fA-F][0-9a-fA-F] )* [']  );
<booleanliteral> : true | false ;
<reservedkeywords>:  SELECT | FROM | IN | AT |LIMIT| PORT | WHERE  | ORDER | BY |  IS | AND | OR | NOT | CONTRACTS | TRANSACTIONS | BLOCKS | TYPE | ACCOUNTS | CONTRACT | ACTIVATED-METHODS | STAMP | CREATE | BUFFER | DIRECTORY | REPOSITORY  | WEI ;
<identifier>: [a-zA-Z_$] [a-zA-Z_$0-9]* ;
<url>: [a-zA-Z_$] [a-zA-Z_$0-9]*[\:]  [0-9]+ ;
<whitespace>: \s+ ;
<stringLiteral>: ( [""] ( [^""\r\n]  | ([ \\ ] . ) )* [""] ) 
               | ( ['] ( [^'\r\n]  | ([ \\ ] . ) )* ['] ) ;

<comment>
	: \/\/ [^\r\n]* 
	| /\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/
	| -- [^\r\n]* 
 	;

### Directives 	
%root RootQuery;
%annotate_tokens;
%prefix EQL;
%suffix Node;
%left "")""  ;
#expression operators -- lowest precedence are first.
%left "","";
%right "":"";
%left ""||"" ""or"";
%left ""&&"" ""and"";
%left ""=="" ""!="" ""="" ""<>"";
%left ""<"" ""<="" "">"" "">="";
%left ""+"" ""-"";
%left ""*"" ""/"" ""%"";
%right ""**"";
%left ""++"" ""--""; 
%right ""delete"" ""!"" ""~"";
%right ""["" ""("";
%left ""."" ;

### Parser & AST Definition

RootQuery : ( Clause 'clause')* {{}}	;
Clause : SelectStatement | CreateStatement ;

SelectStatement: ""select"" ExpressionList 'binding' FromStatement 'from' (DomainStatement 'domain')?  ( WhereStatement  'where')? (OrderByStatement 'orderBy')? (LimitStatement 'limit')? {{}};
CreateStatement: ""create"" ""buffer"" <identifier> 'name' ""{"" SelectStatement 'selection' ""}"" {{}};

DomainStatement: ""domain"" <url> 'url' {{}};
FromStatement: ""from"" SourceList 'sources' {{}};

SourceBind: <identifier> 'binding' ""in"" <identifier> 'buffer_name' {{}};
SourceList
	: SourceBind 'source' ( "","" SourceBind 'source' )* {{}};

WhereStatement: ""where""  Expression 'expression' {{}};

OrderByStatement: ""order"" ""by"" Expression 'expression' {{}};

LimitStatement: ""limit"" <decimalnumber> 'amount' {{}};


### Dates !
	StringDate: 
		<stringLiteral> 'date' ""Date""{{}};
	NowDate: 
		""Now"" {{}};
	Date: 
		StringDate
	      | NowDate;
		

### Booleans! 
	BooleanOperable: 
		(BooleanOperation | CompareOperation | TermExpression | ParenthesisBooleanExpression | ParenthesisCompareExpression);

	BooleanOperation:
		NotOperation
		| OrOperation 
		| AndOperation  ;

	AndOperation:
		BooleanOperable 'left_exp' (""&&""|""and"") 'operator'  BooleanOperable 'right_exp' {{}};
	OrOperation:
		 BooleanOperable 'left_exp' (""||""|""or"") 'operator' BooleanOperable 'right_exp' {{}};
	NotOperation:	
		 (""!"" | ""~"" ) 'operator' BooleanOperable 'exp' {{}};


### Arithmetics! 
	ArithmeticallyOperable: 
		ArithmeticOperation | TermExpression | ParenthesisArithmeticExpression | Date ;

	ArithmeticOperation: 
		NegativeOperation 
		| PowerOperation 
		| MultiplyOperation| DivideOperation | ModuleOperation
		| SumOperation | SubstractOperation ;

	NegativeOperation: 
		""-"" 'operator'  ArithmeticallyOperable 'exp' {{}};
	PowerOperation: 
		ArithmeticallyOperable 'left_exp' ""**"" 'operator' ArithmeticallyOperable 'right_exp' {{}};
	MultiplyOperation: 
		ArithmeticallyOperable 'left_exp' ""*""   'operator' ArithmeticallyOperable 'right_exp' {{}};
	DivideOperation: 
		ArithmeticallyOperable 'left_exp'  ""/""  'operator' ArithmeticallyOperable 'right_exp' {{}};
	ModuleOperation: 
		ArithmeticallyOperable 'left_exp'  ""%""  'operator' ArithmeticallyOperable 'right_exp' {{}};
	SumOperation: 
		ArithmeticallyOperable 'left_exp'  ""+""  'operator' ArithmeticallyOperable 'right_exp' {{}};
	SubstractOperation: 
		ArithmeticallyOperable 'left_exp'  ""-""  'operator' ArithmeticallyOperable 'right_exp' {{}};

### Comparisions!
ComparisionOperable: 
	(ArithmeticOperation | TermExpression | ParenthesisArithmeticExpression | Date ); 

CompareOperation: 
	(LesserThanOperation | LesserEqualsThanOperation | GreaterThanOperation| GreaterEqualsThanOperation)
	|(EqualsToOperation | DifferentThanOperation | LikeOperation);


LesserThanOperation: 
	ComparisionOperable 'left_exp' ""<""  'operator' ComparisionOperable 'right_exp' {{}};
LesserEqualsThanOperation: 
	ComparisionOperable 'left_exp' ""<="" 'operator'   ComparisionOperable 'right_exp' {{}};
GreaterThanOperation: 
	ComparisionOperable 'left_exp' "">"" 'operator'  ComparisionOperable 'right_exp' {{}};
GreaterEqualsThanOperation: 
	ComparisionOperable 'left_exp' "">="" 'operator'  ComparisionOperable 'right_exp' {{}};
EqualsToOperation: 
	ComparisionOperable 'left_exp' (""=="" | ""="") 'operator'  ComparisionOperable 'right_exp' {{}};
DifferentThanOperation: 
	ComparisionOperable 'left_exp' (""!="" | ""<>"") 'operator'  ComparisionOperable 'right_exp' {{}};
LikeOperation: 
	ComparisionOperable 'left_exp' ""like""  'operator' ComparisionOperable 'right_exp' {{}};

ParenthesisArithmeticExpression: ""("" ArithmeticOperation 'exp' "")""  {{}};
ParenthesisBooleanExpression: ""("" BooleanOperation 'exp' "")""  {{}};
ParenthesisCompareExpression: ""("" CompareOperation 'exp' "")""  {{}};

ParenthesisExpression: ""("" Expression 'exp' "")""  {{}};
Expression :  
	ParenthesisExpression
	| ArithmeticOperation
	| CompareOperation
	| BooleanOperation
	| TupleExpression
	| Date
	| TermExpression 
	;

TermExpression
	: <identifier>
	| <identifier> 'property'  ( ""."" <identifier> 'member' |  ""["" Expression 'access_expression' ""]"" ) +  {{MemberOrArrayAccess}}
	| <identifier> 'property'  ( ""."" <identifier> 'member' |  ""["" Expression 'access_expression' ""]"" ) *  ""("" FunctionCallArguments 'arguments' "")"" {{FunctionCall}}
	| <booleanliteral>
	| NumberLiteral 
	| <hexliteral>
	| <stringLiteral>
	;

NumberLiteral 
	: ( <realnumber> | <hexnumber> | <decimalnumber> ) 'number' (NumberUnit 'unit')? {{}}
	;
NumberUnit 
	: ""wei"" 
	| ""szabo""
	| ""finney"" 
	| ""ether""
	| ""seconds"" 
	| ""minutes"" 
	| ""hours"" 
	| ""days"" 
	| ""weeks"" 
	| ""years""
	;
TupleExpression 
	: ""["" ( Expression 'exp' ( "","" (Expression 'exp')?  )*  )? ""]"" {{}}	
 	| ""("" ( Expression 'exp' ( "","" (Expression 'exp')?  )*  )? "")"" {{}} 
	| ""["" ("","" (Expression 'exp')? )+ ""]"" {{}}
	| ""("" ("","" (Expression 'exp')? )+ "")"" {{}}
         ; 
FunctionCallArguments 
	: ""{"" (NameValueList 'name_value_list')? ""}"" {{}} 
	| (ExpressionList 'exp_list') ? {{}} 
	;

NameValueList 
	: <identifier> 'id' "":"" Expression 'exp' ( "","" <identifier> 'id' "":"" Expression 'exp' )* ("","")? {{}}
	;
ExpressionList
	: Expression 'exp' ( "","" Expression 'exp' )* {{}}
	;"