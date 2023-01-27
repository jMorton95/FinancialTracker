�
�C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Enumerables\TransactionCategory.cs
	namespace 	
FinancialTracker
 
. 
Enumerables &
{ 
public 

enum 
TransactionCategory #
{ 
Rent 
, 
Bills 
,
	Groceries 
, 

Eating_Out 
, 
Clothing		 
,		 


 
,

 
Deposit 
, 
Salary 
, 
Side_Income
} 
} �D
�C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Migrations\20230127120706_initialcreate.cs
	namespace 	
FinancialTracker
 
. 

Migrations %
{ 
public		 

partial		 
class		 

:		' (
	Migration		) 2
{

 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str  
,  !
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
int& )
>) *
(* +
type+ /
:/ 0
$str1 6
,6 7
nullable8 @
:@ A
falseB G
)G H
. 

Annotation #
(# $
$str$ 8
,8 9
$str: @
)@ A
,A B
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
type0 4
:4 5
$str6 D
,D E
	maxLengthF O
:O P
$numQ S
,S T
nullableU ]
:] ^
true_ c
)c d
,d e
Balance 
= 
table #
.# $
Column$ *
<* +
double+ 1
>1 2
(2 3
type3 7
:7 8
$str9 D
,D E
	precisionF O
:O P
$numQ S
,S T
scaleU Z
:Z [
$num\ ]
,] ^
nullable_ g
:g h
falsei n
)n o
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 2
,2 3
x4 5
=>6 8
x9 :
.: ;
Id; =
)= >
;> ?
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str 
, 
columns 
: 
table 
=> !
new" %
{ 
Id   
=   
table   
.   
Column   %
<  % &
int  & )
>  ) *
(  * +
type  + /
:  / 0
$str  1 6
,  6 7
nullable  8 @
:  @ A
false  B G
)  G H
.!! 

Annotation!! #
(!!# $
$str!!$ 8
,!!8 9
$str!!: @
)!!@ A
,!!A B
DateOfBirth"" 
=""  !
table""" '
.""' (
Column""( .
<"". /
DateTime""/ 7
>""7 8
(""8 9
type""9 =
:""= >
$str""? J
,""J K
nullable""L T
:""T U
false""V [
)""[ \
,""\ ]
Username## 
=## 
table## $
.##$ %
Column##% +
<##+ ,
string##, 2
>##2 3
(##3 4
type##4 8
:##8 9
$str##: H
,##H I
	maxLength##J S
:##S T
$num##U W
,##W X
nullable##Y a
:##a b
false##c h
)##h i
,##i j
Password$$ 
=$$ 
table$$ $
.$$$ %
Column$$% +
<$$+ ,
Guid$$, 0
>$$0 1
($$1 2
type$$2 6
:$$6 7
$str$$8 J
,$$J K
nullable$$L T
:$$T U
false$$V [
)$$[ \
}%% 
,%% 
constraints&& 
:&& 
table&& "
=>&&# %
{'' 
table(( 
.(( 

PrimaryKey(( $
((($ %
$str((% /
,((/ 0
x((1 2
=>((3 5
x((6 7
.((7 8
Id((8 :
)((: ;
;((; <
})) 
))) 
;)) 
migrationBuilder++ 
.++ 
CreateTable++ (
(++( )
name,, 
:,, 
$str,, $
,,,$ %
columns-- 
:-- 
table-- 
=>-- !
new--" %
{.. 
Id// 
=// 
table// 
.// 
Column// %
<//% &
int//& )
>//) *
(//* +
type//+ /
:/// 0
$str//1 6
,//6 7
nullable//8 @
://@ A
false//B G
)//G H
.00 

Annotation00 #
(00# $
$str00$ 8
,008 9
$str00: @
)00@ A
,00A B
Amount11 
=11 
table11 "
.11" #
Column11# )
<11) *
double11* 0
>110 1
(111 2
type112 6
:116 7
$str118 B
,11B C
	precision11D M
:11M N
$num11O P
,11P Q
scale11R W
:11W X
$num11Y Z
,11Z [
nullable11\ d
:11d e
false11f k
)11k l
,11l m
Date22 
=22 
table22  
.22  !
Column22! '
<22' (
DateTime22( 0
>220 1
(221 2
type222 6
:226 7
$str228 C
,22C D
nullable22E M
:22M N
false22O T
)22T U
,22U V
Name33 
=33 
table33  
.33  !
Column33! '
<33' (
string33( .
>33. /
(33/ 0
type330 4
:334 5
$str336 D
,33D E
	maxLength33F O
:33O P
$num33Q S
,33S T
nullable33U ]
:33] ^
false33_ d
)33d e
,33e f
Category44 
=44 
table44 $
.44$ %
Column44% +
<44+ ,
int44, /
>44/ 0
(440 1
type441 5
:445 6
$str447 <
,44< =
	maxLength44> G
:44G H
$num44I K
,44K L
nullable44M U
:44U V
false44W \
)44\ ]
,44] ^
	AccountId55 
=55 
table55  %
.55% &
Column55& ,
<55, -
int55- 0
>550 1
(551 2
type552 6
:556 7
$str558 =
,55= >
nullable55? G
:55G H
true55I M
)55M N
}66 
,66 
constraints77 
:77 
table77 "
=>77# %
{88 
table99 
.99 

PrimaryKey99 $
(99$ %
$str99% 6
,996 7
x998 9
=>99: <
x99= >
.99> ?
Id99? A
)99A B
;99B C
table:: 
.:: 

ForeignKey:: $
(::$ %
name;; 
:;; 
$str;; B
,;;B C
column<< 
:<< 
x<<  !
=><<" $
x<<% &
.<<& '
	AccountId<<' 0
,<<0 1
principalTable== &
:==& '
$str==( 2
,==2 3
principalColumn>> '
:>>' (
$str>>) -
)>>- .
;>>. /
}?? 
)?? 
;?? 
migrationBuilderAA 
.AA 
CreateIndexAA (
(AA( )
nameBB 
:BB 
$strBB 1
,BB1 2
tableCC 
:CC 
$strCC %
,CC% &
columnDD 
:DD 
$strDD #
)DD# $
;DD$ %
}EE 	
	protectedHH 
overrideHH 
voidHH 
DownHH  $
(HH$ %
MigrationBuilderHH% 5
migrationBuilderHH6 F
)HHF G
{II 	
migrationBuilderJJ 
.JJ 
	DropTableJJ &
(JJ& '
nameKK 
:KK 
$strKK $
)KK$ %
;KK% &
migrationBuilderMM 
.MM 
	DropTableMM &
(MM& '
nameNN 
:NN 
$strNN 
)NN 
;NN 
migrationBuilderPP 
.PP 
	DropTablePP &
(PP& '
nameQQ 
:QQ 
$strQQ  
)QQ  !
;QQ! "
}RR 	
}SS 
}TT �

zC:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Models\Account.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 

class 
Account 
{ 
[ 	
Required	 
, 
Key 
] 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[

 	
	MaxLength

	 
(

 
$num

 
)

 
]

 
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
, 
	Precision 
( 
$num 
,  
$num! "
)" #
]# $
public
double
Balance
{
get
;
set
;
}
public 
List 
< 
Transaction 
>  
?  !
TransactionHistory" 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} �

�C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Models\FinanceDbContext.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 

class 
FinanceDbContext !
:" #
	DbContext$ -
{ 
public 
FinanceDbContext 
(  
DbContextOptions  0
<0 1
FinanceDbContext1 A
>A B
optionsC J
)J K
: 
base 
( 
options 
) 
{ 
} 
public

 
DbSet

 
<

 
User

 
>

 
Users

  
{

! "
get

# &
;

& '
set

( +
;

+ ,
}

- .
public 
DbSet 
< 
Account 
> 
Accounts &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
DbSet 
< 
Transaction  
>  !
Transactions" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
}
} �
~C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Models\Transaction.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 

class 
Transaction 
{		 
[

 	
Required

	 
,

 
Key

 
]

 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
[ 	
Required	 
, 
	Precision 
( 
$num 
, 
$num  !
)! "
]" #
public
double
Amount
{
get
;
set
;
}
=
$num
;
[ 	
Required	 
, 
Column 
( 
TypeName "
=# $
$str% 0
)0 1
]1 2
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
=+ ,
DateTime- 5
.5 6
Now6 9
;9 :
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
string+ 1
.1 2
Empty2 7
;7 8
[ 	
	MaxLength	 
( 
$num 
) 
] 
public 
TransactionCategory "
Category# +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
} 
} �
wC:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Models\User.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 

class 
User 
{ 
[ 	
Required	 
, 
Key 
] 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
[

 	
Required

	 
,

 
Column

 
(

 
TypeName

 "
=

# $
$str

% 0
)

0 1
]

1 2
public 
DateTime 
DateOfBirth #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Required	 
, 
	MaxLength 
( 
$num 
)  
]  !
public
string
Username
{
get
;
set
;
}
=
string
.
Empty
;
[ 	
Required	 
] 
public 
Guid 
Password 
{ 
get "
;" #
set$ '
;' (
}) *
} 
} �
~C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Pages\Error.cshtml.cs
	namespace 	
FinancialTracker
 
. 
Pages  
{ 
[ 

( 
Duration 
= 
$num 
, 
Location &
=' (!
ResponseCacheLocation) >
.> ?
None? C
,C D
NoStoreE L
=M N
trueO S
)S T
]T U
[ "
IgnoreAntiforgeryToken 
] 
public		 
class		 

ErrorModel		 
:		 
	PageModel		 $
{

 
public 
string	 
? 
	RequestId 
{ 
get  
;  !
set" %
;% &
}' (
public
bool

=>
!
string
.

(
	RequestId
)
;
private 	
readonly
 
ILogger 
< 

ErrorModel %
>% &
_logger' .
;. /
public 

ErrorModel	 
( 
ILogger 
< 

ErrorModel &
>& '
logger( .
). /
{ 
_logger 

= 
logger
; 
} 
public 
void	 
OnGet 
( 
) 
{ 
	RequestId 
=
Activity 
. 
Current 
?  
.  !
Id! #
??$ &
HttpContext' 2
.2 3
TraceIdentifier3 B
;B C
} 
} 
} �
~C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Pages\Index.cshtml.cs
	namespace 	
FinancialTracker
 
. 
Pages  
{ 
public 
class 

IndexModel 
: 
	PageModel $
{ 
private 	
readonly
 
ILogger 
< 

IndexModel %
>% &
_logger' .
;. /
public

 

IndexModel

	 
(

 
ILogger

 
<

 

IndexModel

 &
>

& '
logger

( .
)

. /
{ 
_logger 

= 
logger
; 
}
public 
void	 
OnGet 
( 
) 
{ 
} 
} 
} �
�C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Pages\Privacy.cshtml.cs
	namespace 	
FinancialTracker
 
. 
Pages  
{ 
public 
class 
PrivacyModel 
: 
	PageModel &
{ 
private 	
readonly
 
ILogger 
< 
PrivacyModel '
>' (
_logger) 0
;0 1
public

 
PrivacyModel

	 
(

 
ILogger

 
<

 
PrivacyModel

 *
>

* +
logger

, 2
)

2 3
{ 
_logger 

= 
logger
; 
}
public 
void	 
OnGet 
( 
) 
{ 
} 
} 
} �
sC:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Program.cs
var 
builder 
= 
WebApplication 
. 

(* +
args+ /
)/ 0
;0 1
builder 
. 

. 
AddJsonFile !
(! "
$str" 4
,4 5
optional6 >
:> ?
false@ E
,E F
reloadOnChangeG U
:U V
trueW [
)[ \
;\ ]
builder 
. 

. 
AddJsonFile !
(! "
$"" $
$str$ 0
{0 1
Environment1 <
.< =
MachineName= H
}H I
$strI N
"N O
,O P
optionalQ Y
:Y Z
true[ _
,_ `
reloadOnChangea o
:o p
trueq u
)u v
;v w
var		 
environmentName		 
=		 
Environment		 !
.		! ""
GetEnvironmentVariable		" 8
(		8 9
$str		9 K
)		K L
;		L M
if

 
(

 
!

 
string

 
.

 


 
(

 
environmentName

 )
)

) *
)

* +
builder

, 3
.

3 4


4 A
.

A B
AddJsonFile

B M
(

M N
$"

N P
$str

P \
{

\ ]
environmentName

] l
}

l m
$str

m r
"

r s
)

s t
;

t u
builder
.
Services
.
AddDbContext
<
FinanceDbContext
>
(
options
=>
{ 
var 

connString 
= 
builder 
. 

.* +
GetConnectionString+ >
(> ?
$str? U
)U V
;V W
options 
. 
UseSqlServer 
( 

connString #
)# $
;$ %
} 
) 
; 
builder 
. 
Services 
. 

( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
! 
app 
. 	
Environment	 
. 

(" #
)# $
)$ %
{ 
app 
. 
UseExceptionHandler 
( 
$str $
)$ %
;% &
app 
. 
UseHsts 
( 
) 
; 
}   
app## 
.## 
UseHttpsRedirection## 
(## 
)## 
;## 
app$$ 
.$$ 
UseStaticFiles$$ 
($$ 
)$$ 
;$$ 
app&& 
.&& 

UseRouting&& 
(&& 
)&& 
;&& 
app(( 
.(( 
UseAuthorization(( 
((( 
)(( 
;(( 
app** 
.** 

(** 
)** 
;** 
app,, 
.,, 
Run,, 
(,, 
),, 	
;,,	 
�
�C:\Users\JoshMorton\Documents\_Personal\personalRepos\FinancialTracker\FinancialTracker\FinancialTracker\Repositories\Interfaces\ITransactionHistoryRepository.cs
	namespace 	
FinancialTracker
 
. 
Repositories '
.' (

Interfaces( 2
{ 
public 

	interface )
ITransactionHistoryRepository 2
{ 
Task 
< 
List
< 
Transaction 
> 
> !
GetTransactionHistory  5
(5 6
int6 9
	accountId: C
)C D
;D E
} 
}		 