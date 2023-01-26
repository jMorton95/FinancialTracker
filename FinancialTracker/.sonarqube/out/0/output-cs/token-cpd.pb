
lC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Models\Account.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 

class 
Account 
{ 
[ 	
Required	 
] 
private 
int 
Id 
{ 
get 
; 
set !
;! "
}# $
[		 	
Required			 
]		 
private

 
int

 
OwnerId

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
private 
string 
AccountName "
{# $
get% (
;( )
set* -
;- .
}/ 0
private 
double 
Balance 
{  
get! $
;$ %
set& )
;) *
}+ ,
private 
List 
< 
Transaction  
>  !
Transactions" .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
public 
Account 
( 
int 
id 
, 
int "
ownerId# *
,* +
string, 2
accountName3 >
,> ?
double@ F
balanceG N
,N O
ListP T
<T U
TransactionU `
>` a
transactionsb n
)n o
{ 	
Id 
= 
id 
; 
OwnerId 
= 
ownerId 
; 
AccountName 
= 
accountName %
;% &
Balance 
= 
balance 
; 
Transactions 
= 
transactions '
;' (
} 	
} 
} Ã
ÄC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Models\Enumerables\ExpenseCategory.cs
	namespace 	
FinancialTracker
 
. 
Models !
.! "
Enumerables" -
{ 
public 

enum 
ExpenseCategory 
{ 
Rent 
, 
Bills 
, 
	Groceries 
, 

Eating_Out 
, 
Clothing		 
,		 
Miscellanious

 
} 
} ∏
ÄC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Models\Enumerables\RevenueCategory.cs
	namespace 	
FinancialTracker
 
. 
Models !
.! "
Enumerables" -
{ 
public 

enum 
RevenueCategory 
{ 
Salary 
, 
Side_Income 
} 
} ö
lC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Models\Expense.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 
class 
Expense 
: 
Transaction #
{		 
public

 
Expense

	 
(

 
ExpenseCategory

  
_expenseCategory

! 1
,

1 2
int

3 6
id

7 9
,

9 :
int

; >
amount

? E
,

E F
string

G M
name

N R
,

R S
DateTime

T \
date

] a
)

a b
: 
base 
( 
id 
, 
amount 
, 
name #
,# $
date% )
)) *
{ 
	_Category 
= 
_expenseCategory 
.  
ToString  (
(( )
)) *
;* +
} 
} 
} ö
lC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Models\Revenue.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 

class 
Revenue 
: 
Transaction &
{		 
public

 
Revenue

	 
(

 
RevenueCategory

  
_revenueCategory

! 1
,

1 2
int

3 6
id

7 9
,

9 :
int

; >
amount

? E
,

E F
string

G M
name

N R
,

R S
DateTime

T \
date

] a
)

a b
: 
base 	
(	 

id
 
, 
amount 
, 
name 
, 
date  
)  !
{ 
	_Category 
= 
_revenueCategory 
.  
ToString  (
(( )
)) *
;* +
} 	
} 
} ⁄
pC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Models\Transaction.cs
	namespace 	
FinancialTracker
 
. 
Models !
{ 
public 
class 
Transaction 
{ 
[ 
Required 
] 
private 	
int
 
_Id 
{ 
get 
; 
set 
; 
} 
private		 
int		 
_Amount		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
=		* +
$num		, -
;		- .
private

 
string

 
_Name

 
{

 
get

 "
;

" #
set

$ '
;

' (
}

) *
=

+ ,
string

- 3
.

3 4
Empty

4 9
;

9 :
private 
DateTime 
_Date 
{  
get  #
;# $
set% (
;( )
}* +
=, -
DateTime. 6
.6 7
Now7 :
;: ;
	protected 
string 
	_Category "
{# $
get% (
;( )
set* -
;- .
}/ 0
=1 2
string3 9
.9 :
Empty: ?
;? @
public 
Transaction	 
( 
int 
id 
, 
int  
amount! '
,' (
string) /
name0 4
,4 5
DateTime6 >
date? C
)C D
{ 
_Id 
= 
id	 
; 
_Amount 

= 
amount 
; 
_Name 
=	 

name 
; 
_Date 
=	 

date 
; 
} 
} 
} é
pC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Pages\Error.cshtml.cs
	namespace 	
FinancialTracker
 
. 
Pages  
{ 
[ 
ResponseCache 
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
class		 

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
public 
bool	 
ShowRequestId 
=> 
!  
string  &
.& '
IsNullOrEmpty' 4
(4 5
	RequestId5 >
)> ?
;? @
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
logger 
; 
} 
public 
void	 
OnGet 
( 
) 
{ 
	RequestId 
= 
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
} Å
pC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Pages\Index.cshtml.cs
	namespace 	
FinancialTracker
 
. 
Pages  
{ 
public 
class 

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
logger 
; 
} 
public 
void	 
OnGet 
( 
) 
{ 
} 
} 
} ã
rC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Pages\Privacy.cshtml.cs
	namespace 	
FinancialTracker
 
. 
Pages  
{ 
public 
class 
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
logger 
; 
} 
public 
void	 
OnGet 
( 
) 
{ 
} 
} 
} ⁄
eC:\Users\JoshMorton\Documents\_Personal\FinancialTracker\FinancialTracker\FinancialTracker\Program.cs
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddRazorPages 
( 
)  
;  !
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if		 
(		 
!		 
app		 
.		 	
Environment			 
.		 
IsDevelopment		 "
(		" #
)		# $
)		$ %
{

 
app 
. 
UseExceptionHandler 
( 
$str !
)! "
;" #
app 
. 
UseHsts 
( 
) 
; 
} 
app 
. 
UseHttpsRedirection 
( 
) 
; 
app 
. 
UseStaticFiles 
( 
) 
; 
app 
. 

UseRouting 
( 
) 
; 
app 
. 
UseAuthorization 
( 
) 
; 
app 
. 
MapRazorPages 
( 
) 
; 
app 
. 
Run 
( 
) 	
;	 
