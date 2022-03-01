Š

:C:\Users\flacm\source\repos\Tura\CrossCutting\AppConfig.cs
	namespace 	
CrossCutting
 
{ 
public 

class 
	AppConfig 
: 

IAppConfig '
{		 
private

 
readonly

 
IConfiguration

 '
configuration

( 5
;

5 6
public 
	AppConfig 
( 
IConfiguration '
configuration( 5
)5 6
{ 	
this 
. 
configuration 
=  
configuration! .
;. /
} 	
public 
int 
MaxTrys 
=> 
int !
.! "
Parse" '
(' (
configuration( 5
.5 6

GetSection6 @
(@ A
$strA Q
)Q R
.R S
ValueS X
)X Y
;Y Z
public 
int 
	TimeDelay 
=> 
int  #
.# $
Parse$ )
() *
configuration* 7
.7 8

GetSection8 B
(B C
$strC U
)U V
.V W
ValueW \
)\ ]
;] ^
} 
} Å
;C:\Users\flacm\source\repos\Tura\CrossCutting\IAppConfig.cs
	namespace 	
CrossCutting
 
{ 
	interface 

IAppConfig 
{ 
public		 
int		 
MaxTrys		 
{		 
get		  
;		  !
}		" #
public

 
int

 
	TimeDelay

 
{

 
get

 "
;

" #
}

$ %
} 
} È
<C:\Users\flacm\source\repos\Tura\CrossCutting\IoCRegister.cs
	namespace

 	
CrossCutting


 
{ 
public 

static 
class 
IoCRegister #
{ 
public 
static 
IServiceCollection (
AddRegistration) 8
(8 9
this9 =
IServiceCollection> P
servicesQ Y
)Y Z
{ 	
return !
AddRegisterRepository (
(( )
services* 2
)2 3
;3 4
} 	
public 
static 
IServiceCollection (!
AddRegisterRepository) >
(> ?
IServiceCollection? Q
servicesR Z
)Z [
{ 	
services 
. 
AddTransient !
<! " 
IConnectorRepository" 6
,6 7
ConnectorRepository8 K
>K L
(L M
)M N
;N O
services 
. 
AddTransient !
<! "'
ICorrelationRulesRepository" =
,= >&
CorrelationRulesRepository? Y
>Y Z
(Z [
)[ \
;\ ]
services 
. 
AddTransient !
<! "
IIdentityRepository" 5
,5 6
IdentityRepository7 I
>I J
(J K
)K L
;L M
services 
. 
AddTransient !
<! "
IUserRepository" 1
,1 2
UserRepository3 A
>A B
(B C
)C D
;D E
services 
. 
AddTransient !
<! "

IAppConfig" ,
,, -
	AppConfig. 7
>7 8
(8 9
)9 :
;: ;
var 
basepath 
= 
System !
.! "
	AppDomain" +
.+ ,
CurrentDomain, 9
.9 :
BaseDirectory: G
;G H
var 
xmlPath 
= 
Path 
. 
Combine &
(& '
basepath' /
,/ 0
$str1 ?
)? @
;@ A
object 
p 
= 
services 
.  
AddSwaggerGen  -
(- .
c 
=> 
{ 
c   
.   

SwaggerDoc    
(    !
$str  ! '
,  ' (
new  ) ,
	Microsoft  - 6
.  6 7
OpenApi  7 >
.  > ?
Models  ? E
.  E F
OpenApiInfo  F Q
(  Q R
)  R S
{  S T
Title  U Z
=  [ \
$str  ] c
,  c d
Version  e l
=  m n
$str  o r
}  s t
)  t u
;  u v
c!! 
.!! 
IncludeXmlComments!! (
(!!( )
xmlPath!!) 0
)!!0 1
;!!1 2
}"" 
)$$ 
;$$ 
return'' 
services'' 
;'' 
}(( 	
public)) 
static)) 
IApplicationBuilder)) )
AddConfiguration))* :
()): ;
this)); ?
IApplicationBuilder))@ S
applicationBuilder))T f
)))f g
{** 	
applicationBuilder++ 
.++ 

UseSwagger++ )
(++) *
)++* +
;+++ ,
applicationBuilder,, 
.,, 
UseSwaggerUI,, +
(,,+ ,
c,,, -
=>,,- /
c,,/ 0
.,,0 1
SwaggerEndpoint,,1 @
(,,@ A
$str,,A ]
,,,] ^
$str,,^ d
),,d e
),,e f
;,,f g
return.. 
applicationBuilder.. %
;..% &
}// 	
}00 
}11 ýF
7C:\Users\flacm\source\repos\Tura\CrossCutting\Mapper.cs
	namespace 	
CrossCutting
 
{ 
public		 

static		 
class		 
Mapper		 
{

 
public 
static 
IdentityEntity $
Model2EntityMapper% 7
(7 8
IdentityModel8 E
modelF K
)K L
{ 	
var 
mapper 
= 
new 
Tura !
.! "

DataAccess" ,
., -
	Contracts- 6
.6 7
Entities7 ?
.? @
IdentityEntity@ N
(N O
)O P
{ 
Email 
= 
model 
. 
Email #
,# $
IsActive 
= 
model  
.  !
IsActive! )
,) *
Name 
= 
model 
. 
Name !
,! "
Surname 
= 
model 
.  
Surname  '
,' (
UserName 
= 
model  
.  !
UserName! )
} 
; 
return 
mapper 
; 
} 	
public 
static 
IdentityModel #
Entity2ModelMapper$ 6
(6 7
IdentityEntity7 E
modelF K
)K L
{ 	
var 
mapper 
= 
new 
IdentityModel *
(* +
)+ ,
{ 
Created 
= 
System  
.  !
DateTime! )
.) *
Today* /
,/ 0
Email   
=   
model   
.   
Email   #
,  # $
IsActive!! 
=!! 
model!!  
.!!  !
IsActive!!! )
,!!) *
Modified"" 
="" 
System"" !
.""! "
DateTime""" *
.""* +
Today""+ 0
,""0 1
Name## 
=## 
model## 
.## 
Name## !
,##! "
Surname$$ 
=$$ 
model$$ 
.$$  
Surname$$  '
,$$' (
UserName%% 
=%% 
model%%  
.%%  !
UserName%%! )
}'' 
;'' 
return(( 
mapper(( 
;(( 
})) 	
public** 
static** 

UserEntity**  
Model2EntityMapper**! 3
(**3 4
	UserModel**4 =
model**> C
)**C D
{++ 	

UserEntity,, 
mapper,, 
=,, 
new,,  #
Tura,,$ (
.,,( )

DataAccess,,) 3
.,,3 4
	Contracts,,4 =
.,,= >
Entities,,> F
.,,F G

UserEntity,,G Q
(,,Q R
),,R S
{-- 
ConnectorID.. 
=.. 
model.. #
...# $
ConnectorID..$ /
,../ 0

InternalID// 
=// 
model// "
.//" #

InternalID//# -
,//- .
Username00 
=00 
model00  
.00  !
Username00! )
,00) *
IsActive11 
=11 
model11  
.11  !
IsActive11! )
,11) *
Name22 
=22 
model22 
.22 
Name22 !
,22! "
Surname33 
=33 
model33 
.33  
Surname33  '
,33' (

IdentityID44 
=44 
model44 "
.44" #

IdentityID44# -
}55 
;55 
return77 
mapper77 
;77 
}88 	
public99 
static99 
	UserModel99 
Entity2ModelMapper99  2
(992 3

UserEntity993 =
model99> C
)99C D
{:: 	
var;; 
mapper;; 
=;; 
new;; 
	UserModel;; &
(;;& '
);;' (
{<< 
Username== 
=== 
model==  
.==  !
Username==! )
,==) *
IsActive>> 
=>> 
model>>  
.>>  !
IsActive>>! )
,>>) *

InternalID?? 
=?? 
model?? "
.??" #

InternalID??# -
,??- .
ConnectorID@@ 
=@@ 
model@@ #
.@@# $
ConnectorID@@$ /
,@@/ 0

IdentityIDAA 
=AA 
modelAA "
.AA" #

IdentityIDAA# -
,AA- .
NameBB 
=BB 
modelBB 
.BB 
NameBB !
,BB! "
SurnameCC 
=CC 
modelCC 
.CC  
SurnameCC  '
}DD 
;DD 
returnEE 
mapperEE 
;EE 
}FF 	
publicGG 
staticGG 
ConnectorEntityGG %
Model2EntityMapperGG& 8
(GG8 9
ConnectorModelGG9 G
modelGGH M
)GGM N
{HH 	
varII 
mapperII 
=II 
newII 
TuraII !
.II! "

DataAccessII" ,
.II, -
	ContractsII- 6
.II6 7
EntitiesII7 ?
.II? @
ConnectorEntityII@ O
(IIO P
)IIP Q
{JJ 

AppRefNameKK 
=KK 
modelKK "
.KK" #

AppRefNameKK# -
,KK- .
DBNameLL 
=LL 
modelLL 
.LL 
DBNameLL %
,LL% &
IPMM 
=MM 
modelMM 
.MM 
IPMM 
,MM 
	OtherInfoNN 
=NN 
modelNN !
.NN! "
	OtherInfoNN" +
,NN+ ,
PasswdOO 
=OO 
modelOO 
.OO 
PasswdOO %
,OO% &
PortPP 
=PP 
modelPP 
.PP 
PortPP !
,PP! "
UnameQQ 
=QQ 
modelQQ 
.QQ 
UnameQQ #
,QQ# $
NameRR 
=RR 
modelRR 
.RR 
NameRR !
}SS 
;SS 
returnTT 
mapperTT 
;TT 
}UU 	
publicVV 
staticVV 
ConnectorModelVV $
Entity2ModelMapperVV% 7
(VV7 8
ConnectorEntityVV8 G
modelVVH M
)VVM N
{WW 	
varXX 
mapperXX 
=XX 
newXX 
ConnectorModelXX +
(XX+ ,
)XX, -
{YY 
IdZZ 
=ZZ 
modelZZ 
.ZZ 
IdZZ 
,ZZ 
Uname[[ 
=[[ 
model[[ 
.[[ 
Uname[[ #
,[[# $

AppRefName\\ 
=\\ 
model\\ "
.\\" #

AppRefName\\# -
,\\- .
DBName]] 
=]] 
model]] 
.]] 
DBName]] %
,]]% &
IP^^ 
=^^ 
model^^ 
.^^ 
IP^^ 
,^^ 
	OtherInfo__ 
=__ 
model__ !
.__! "
	OtherInfo__" +
,__+ ,
Passwdaa 
=aa 
$straa  
,aa  !
Portbb 
=bb 
modelbb 
.bb 
Portbb !
}cc 
;cc 
returndd 
mapperdd 
;dd 
}ee 	
publicff 
staticff !
CorrelationRuleEntityff +
Model2EntityMapperff, >
(ff> ? 
CorrelationRuleModelff? S
modelffT Y
)ffY Z
{gg 	!
CorrelationRuleEntityhh !
mapperhh" (
=hh) *
newhh+ .
Turahh/ 3
.hh3 4

DataAccesshh4 >
.hh> ?
	Contractshh? H
.hhH I
EntitieshhI Q
.hhQ R!
CorrelationRuleEntityhhR g
(hhg h
)hhh i
{ii 
namejj 
=jj 
modeljj 
.jj 
namejj !
,jj! "
rulekk 
=kk 
modelkk 
.kk 
rulekk !
}ll 
;ll 
returnmm 
mappermm 
;mm 
}nn 	
publicoo 
staticoo  
CorrelationRuleModeloo *
Entity2ModelMapperoo+ =
(oo= >!
CorrelationRuleEntityoo> S
modelooT Y
)ooY Z
{pp 	
varqq 
mapperqq 
=qq 
newqq  
CorrelationRuleModelqq 1
(qq1 2
)qq2 3
{rr 
namess 
=ss 
modelss 
.ss 
namess !
,ss! "
rulett 
=tt 
modeltt 
.tt 
rulett !
}uu 
;uu 
returnvv 
mappervv 
;vv 
}ww 	
}xx 
}yy 