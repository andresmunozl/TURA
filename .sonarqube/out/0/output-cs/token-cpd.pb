?
LC:\Users\flacm\source\repos\Tura\Tura.App.Contracts\Models\ConnectorModel.cs
	namespace 	
Tura
 
. 
App 
. 
	Contracts 
. 
Models #
{ 
public 

class 
ConnectorModel 
{ 
public		 
Guid		 
Id		 
{		 
get		 
;		 
set		 !
;		! "
}		# $
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
? 

AppRefName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
IP 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Uname 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
Passwd 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
DBName 
{ 
get "
;" #
set$ '
;' (
}) *
public 
int 
Port 
{ 
get 
; 
set "
;" #
}$ %
public 
string 
? 
	OtherInfo  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ?
RC:\Users\flacm\source\repos\Tura\Tura.App.Contracts\Models\CorrelationRuleModel.cs
	namespace 	
Tura
 
. 
App 
. 
	Contracts 
. 
Models #
{ 
public 

class  
CorrelationRuleModel %
{ 
public		 
string		 
name		 
{		 
get		  
;		  !
set		" %
;		% &
}		' (
public

 
string

 
rule

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} ?
KC:\Users\flacm\source\repos\Tura\Tura.App.Contracts\Models\IdentityModel.cs
	namespace 	
Tura
 
. 
App 
. 
	Contracts 
. 
Models #
{ 
public 

class 
IdentityModel 
{ 
public		 
string		 
UserName		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Name

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
public 
string 
Surname 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
DateTime 
Modified  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
DateTime 
Created 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} ?
GC:\Users\flacm\source\repos\Tura\Tura.App.Contracts\Models\UserModel.cs
	namespace 	
Tura
 
. 
App 
. 
	Contracts 
. 
Models #
{ 
public 

class 
	UserModel 
{ 
public		 
Guid		 
ConnectorID		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
string

 
Username

 
{

  
get

! $
;

$ %
set

& )
;

) *
}

+ ,
public 
string 
? 
Name 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
? 
Surname 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 

InternalID 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
int 
? 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Guid 
? 

IdentityID 
{  !
get" %
;% &
set' *
;* +
}, -
} 
} 