generated
definitionComment
"### Scanner part
<decimalnumber>: [0-9]+ ;
<hexnumber>: 0x[0-9a-fA-F]+ ;
<realnumber>: <decimalnumber>? [\.] <decimalnumber> ; #  added to support real numbers (not in the grammar but apear in the contracts)	
<hexliteral>: hex ( [""] ( [0-9a-fA-F][0-9a-fA-F] )* [""] |  ['] ( [0-9a-fA-F][0-9a-fA-F] )* [']  );
<booleanliteral> : true | false ;
<reservedkeywords>:  SELECT | FROM | IN | AT | PORT | WHERE  | ORDER | BY |  IS | AND | OR | NOT | CONTRACTS | TRANSACTIONS | BLOCKS | TYPE | ACCOUNTS | CONTRACT | ACTIVATED-METHODS | STAMP | CREATE | STREAM | DIRECTORY | REPOSITORY  | WEI ;
<identifier>: [a-zA-Z_$] [a-zA-Z_$0-9]* ;
<url>: [a-zA-Z_$] [a-zA-Z_$0-9]*[\:]  [0-9]+ ;
<nestedids> : <identifier> ( [\.]  <identifier> )+ ;
<whitespace>: \s+ ;

<comment>
	: \/\/ [^\r\n]* 
	| /\*([^*]|[\r\n]|(\*+([^*/]|[\r\n])))*\*+/
 	;

### Directives 	
%root RootQuery;
%annotate_tokens;
%prefix EQL;
%suffix Node;
%left "")""  ;
#expression operators -- lowest precedence are first.
%left "","";
%right ""="" ""|="" ""^="" ""&="" ""<<="" "">>="" ""+="" ""-="" ""*="" ""/="" ""%="";
%right "":"";
%left ""?"";
%left ""||"";
%left ""&&"";
%left ""=="" ""!="";
%left ""<"" ""<="" "">"" "">="";
%left ""|"";
%left ""^"";
%left ""&"";
%left ""<<"" "">>"";
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

SelectStatement: ""select"" Expression 'binding' FromStatement 'from' (DomainStatement 'domain')?   WhereStatement  'where' OrderByStatement 'orderBy'{{}};
CreateStatement: ""create"" ""stream"" <identifier> 'name' ""{"" SelectStatement 'selection' ""}"" {{}};

DomainStatement: ""domain"" <url> 'url' {{}};
FromStatement: ""from"" <identifier> 'binding' ""in"" <identifier> 'stream_name' {{}};


WhereStatement: ""where""  Expression 'expression' {{}};

OrderByStatement: ""order"" ""by"" Expression 'expression' {{}};

BinaryExpression :
	 Expression 'left_exp' ""**"" 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""*"" | ""/"" | ""%"") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""+"" | ""-"") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""<<"" | "">>"") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' ""&"" 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' ""^"" 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' ""|"" 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""<"" | "">"" | ""<="" | "">="") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""=="" | ""!="" | ""like"") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""&&""|""and"") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""||""|""or"") 'operation' Expression 'right_exp' {{}}
	| Expression 'left_exp' (""="" | ""|="" | ""^="" | ""&="" | ""<<="" | "">>="" | ""+="" | ""-="" | ""*="" | ""/="" | ""%="") 'operation' Expression 'right_exp' {{}} ;
UnaryPrefixExpression:	
	 (""!"" | ""~"" | ""-"") 'operation' Expression 'exp' {{}};

ParenthesisExpression: ""("" Expression 'exp' "")""  {{}};
Expression :  
	ParenthesisExpression
	| BinaryExpression
	| UnaryPrefixExpression
	| TupleExpression
	| TermExpression 'term' {{}}
	;


TermExpression
	: Factor 'factor' {{}}
	| MemberAccess 
	| ArrayAccess
	| FunctionCall 
	| <nestedids>
	;
	
# New Rule to resolve conflicts with several rules starting with the same tokens
Factor
	: <identifier>
	| <booleanliteral>
	| NumberLiteral 
	| <hexliteral>
	| <stringLiteral>
	;

MemberAccess: <identifier> 'property'  ""."" <identifier> 'member' {{}}; 
ArrayAccess: <identifier> 'property'  ""["" Expression 'access_expression' ""]"" {{}};
	
# New Rule to allow member access, the optionality is to allow simple expressions
OptionalMemberArrayAccess
	: ( ( ""."" <nestedids> 'id_list_member_access' ) | (""."" <identifier> 'id_member_access') | ( ""["" (Expression 'array_access_exp' )? ""]"" ) )* {{}}	
	;
OptionalFunctionCall
	: ( ""("" FunctionCallArguments 'func_args' "")"" ) {{}}
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
FunctionCall 
	: ( FunctionCallName 'function_name' ) OptionalMemberArrayAccess 'opt_access' ""("" FunctionCallArguments 'arguments' "")"" {{}}
	;
FunctionCallName
	: Factor
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