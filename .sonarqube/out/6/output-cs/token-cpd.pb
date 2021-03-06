?
SC:\Users\flacm\source\repos\Tura\TuraFront\Controllers\WeatherForecastController.cs
	namespace 	
	TuraFront
 
. 
Controllers 
{		 
[

 
ApiController

 
]

 
[ 
Route 

(
 
$str 
) 
] 
public 

class %
WeatherForecastController *
:+ ,
ControllerBase- ;
{ 
private 
static 
readonly 
string  &
[& '
]' (
	Summaries) 2
=3 4
new5 8
[8 9
]9 :
{ 	
$str 
, 
$str !
,! "
$str# +
,+ ,
$str- 3
,3 4
$str5 ;
,; <
$str= C
,C D
$strE L
,L M
$strN S
,S T
$strU a
,a b
$strc n
} 	
;	 

private 
readonly 
ILogger  
<  !%
WeatherForecastController! :
>: ;
_logger< C
;C D
public %
WeatherForecastController (
(( )
ILogger) 0
<0 1%
WeatherForecastController1 J
>J K
loggerL R
)R S
{ 	
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
] 
public 
IEnumerable 
< 
WeatherForecast *
>* +
Get, /
(/ 0
)0 1
{ 	
var 
rng 
= 
new 
Random  
(  !
)! "
;" #
return 

Enumerable 
. 
Range #
(# $
$num$ %
,% &
$num' (
)( )
.) *
Select* 0
(0 1
index1 6
=>7 9
new: =
WeatherForecast> M
{ 
Date   
=   
DateTime   
.    
Now    #
.  # $
AddDays  $ +
(  + ,
index  , 1
)  1 2
,  2 3
TemperatureC!! 
=!! 
rng!! "
.!!" #
Next!!# '
(!!' (
-!!( )
$num!!) +
,!!+ ,
$num!!- /
)!!/ 0
,!!0 1
Summary"" 
="" 
	Summaries"" #
[""# $
rng""$ '
.""' (
Next""( ,
("", -
	Summaries""- 6
.""6 7
Length""7 =
)""= >
]""> ?
}## 
)## 
.$$ 
ToArray$$ 
($$ 
)$$ 
;$$ 
}%% 	
}&& 
}'' ?
@C:\Users\flacm\source\repos\Tura\TuraFront\Pages\Error.cshtml.cs
	namespace

 	
	TuraFront


 
.

 
Pages

 
{ 
[ 
ResponseCache 
( 
Duration 
= 
$num 
,  
Location! )
=* +!
ResponseCacheLocation, A
.A B
NoneB F
,F G
NoStoreH O
=P Q
trueR V
)V W
]W X
public 

class 

ErrorModel 
: 
	PageModel '
{ 
private 
readonly 
ILogger  
<  !

ErrorModel! +
>+ ,
_logger- 4
;4 5
public 

ErrorModel 
( 
ILogger !
<! "

ErrorModel" ,
>, -
logger. 4
)4 5
{ 	
_logger 
= 
logger 
; 
} 	
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ?
5C:\Users\flacm\source\repos\Tura\TuraFront\Program.cs
	namespace

 	
	TuraFront


 
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	 
CreateWebHostBuilder  
(  !
args! %
)% &
.& '
Build' ,
(, -
)- .
.. /
Run/ 2
(2 3
)3 4
;4 5
} 	
public 
static 
IWebHostBuilder % 
CreateWebHostBuilder& :
(: ;
string; A
[A B
]B C
argsD H
)H I
=>J L
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
;& '
} 
} ?
5C:\Users\flacm\source\repos\Tura\TuraFront\Startup.cs
	namespace		 	
	TuraFront		
 
{

 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. #
AddControllersWithViews ,
(, -
)- .
;. /
services 
. 
AddSpaStaticFiles &
(& '
configuration' 4
=>5 7
{ 
configuration 
. 
RootPath &
=' (
$str) 9
;9 :
} 
) 
; 
} 	
public   
void   
	Configure   
(   
IApplicationBuilder   1
app  2 5
,  5 6
IWebHostEnvironment  7 J
env  K N
)  N O
{!! 	
if"" 
("" 
env"" 
."" 
IsDevelopment"" !
(""! "
)""" #
)""# $
{## 
app$$ 
.$$ %
UseDeveloperExceptionPage$$ -
($$- .
)$$. /
;$$/ 0
}%% 
else&& 
{'' 
app(( 
.(( 
UseExceptionHandler(( '
(((' (
$str((( 0
)((0 1
;((1 2
app** 
.** 
UseHsts** 
(** 
)** 
;** 
}++ 
app-- 
.-- 
UseHttpsRedirection-- #
(--# $
)--$ %
;--% &
app.. 
... 
UseStaticFiles.. 
(.. 
)..  
;..  !
if// 
(// 
!// 
env// 
.// 
IsDevelopment// "
(//" #
)//# $
)//$ %
{00 
app11 
.11 
UseSpaStaticFiles11 %
(11% &
)11& '
;11' (
app22 
.22 %
UseDeveloperExceptionPage22 -
(22- .
)22. /
;22/ 0
app33 
.33 
UseBrowserLink33 "
(33" #
)33# $
;33$ %
}44 
app55 
.55 

UseRouting55 
(55 
)55 
;55 
app77 
.77 
UseEndpoints77 
(77 
	endpoints77 &
=>77' )
{88 
	endpoints99 
.99 
MapControllerRoute99 ,
(99, -
name:: 
::: 
$str:: #
,::# $
pattern;; 
:;; 
$str;; @
);;@ A
;;;A B
}<< 
)<< 
;<< 
app>> 
.>> 
UseSpa>> 
(>> 
spa>> 
=>>> 
{?? 
spaCC 
.CC 
OptionsCC 
.CC 

SourcePathCC &
=CC' (
$strCC) 4
;CC4 5
ifEE 
(EE 
envEE 
.EE 
IsDevelopmentEE %
(EE% &
)EE& '
)EE' (
{FF 
spaGG 
.GG 
UseAngularCliServerGG +
(GG+ ,
	npmScriptGG, 5
:GG5 6
$strGG7 >
)GG> ?
;GG? @
}HH 
}II 
)II 
;II 
}JJ 	
}KK 
}LL ?
=C:\Users\flacm\source\repos\Tura\TuraFront\WeatherForecast.cs
	namespace 	
	TuraFront
 
{ 
public 

class 
WeatherForecast  
{ 
public 
DateTime 
Date 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
int		 
TemperatureC		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public 
int 
TemperatureF 
=>  "
$num# %
+& '
(( )
int) ,
), -
(- .
TemperatureC. :
/; <
$num= C
)C D
;D E
public 
string 
Summary 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} 