func @_CrossCutting.Mapper.Model2EntityMapper$Tura.App.Contracts.Models.IdentityModel$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :10 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :10 :56)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :10 :56)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :12 :25) // new Tura.DataAccess.Contracts.Entities.IdentityEntity()              {                  //Created date should not be updated                  //Created = model.Created,                  Email = model.Email,                  IsActive = model.IsActive,                  //Modified date should not be updated                  //Modified = model.Modified,                  Name = model.Name,                  Surname = model.Surname,                  UserName = model.UserName              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :16 :24) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :16 :24) // model.Email (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :17 :27) // Not a variable of known type: model
%5 = cbde.unknown : i1 loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :17 :27) // model.IsActive (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :20 :23) // Not a variable of known type: model
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :20 :23) // model.Name (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :21 :26) // Not a variable of known type: model
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :21 :26) // model.Surname (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :22 :27) // Not a variable of known type: model
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :22 :27) // model.UserName (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :24 :19) // Not a variable of known type: mapper
return %13 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :24 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Entity2ModelMapper$Tura.DataAccess.Contracts.Entities.IdentityEntity$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :26 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :26 :55)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :26 :55)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :28 :25) // new IdentityModel()              {                  Created = System.DateTime.Today,                  Email = model.Email,                  IsActive = model.IsActive,                  Modified = System.DateTime.Today,                  Name = model.Name,                  Surname = model.Surname,                  UserName = model.UserName                } (ObjectCreationExpression)
// Entity from another assembly: System
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :30 :26) // System.DateTime (SimpleMemberAccessExpression)
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :30 :26) // System.DateTime.Today (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :31 :24) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :31 :24) // model.Email (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :32 :27) // Not a variable of known type: model
%7 = cbde.unknown : i1 loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :32 :27) // model.IsActive (SimpleMemberAccessExpression)
// Entity from another assembly: System
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :33 :27) // System.DateTime (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :33 :27) // System.DateTime.Today (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :34 :23) // Not a variable of known type: model
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :34 :23) // model.Name (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :35 :26) // Not a variable of known type: model
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :35 :26) // model.Surname (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :36 :27) // Not a variable of known type: model
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :36 :27) // model.UserName (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :39 :19) // Not a variable of known type: mapper
return %17 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :39 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Model2EntityMapper$Tura.App.Contracts.Models.UserModel$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :41 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :41 :52)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :41 :52)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :43 :32) // new Tura.DataAccess.Contracts.Entities.UserEntity()              {                  ConnectorID = model.ConnectorID,                  InternalID = model.InternalID,                  Username = model.Username,                  IsActive = model.IsActive,                  Name = model.Name,                  Surname = model.Surname,                  IdentityID = model.IdentityID              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :45 :30) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :45 :30) // model.ConnectorID (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :46 :29) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :46 :29) // model.InternalID (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :47 :27) // Not a variable of known type: model
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :47 :27) // model.Username (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :48 :27) // Not a variable of known type: model
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :48 :27) // model.IsActive (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :49 :23) // Not a variable of known type: model
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :49 :23) // model.Name (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :50 :26) // Not a variable of known type: model
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :50 :26) // model.Surname (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :51 :29) // Not a variable of known type: model
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :51 :29) // model.IdentityID (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :54 :19) // Not a variable of known type: mapper
return %17 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :54 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Entity2ModelMapper$Tura.DataAccess.Contracts.Entities.UserEntity$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :56 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :56 :51)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :56 :51)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :58 :25) // new UserModel()              {                  Username = model.Username,                  IsActive = model.IsActive,                  InternalID = model.InternalID,                  ConnectorID = model.ConnectorID,                  IdentityID = model.IdentityID,                  Name = model.Name,                  Surname = model.Surname              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :60 :27) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :60 :27) // model.Username (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :61 :27) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :61 :27) // model.IsActive (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :62 :29) // Not a variable of known type: model
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :62 :29) // model.InternalID (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :63 :30) // Not a variable of known type: model
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :63 :30) // model.ConnectorID (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :64 :29) // Not a variable of known type: model
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :64 :29) // model.IdentityID (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :65 :23) // Not a variable of known type: model
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :65 :23) // model.Name (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :66 :26) // Not a variable of known type: model
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :66 :26) // model.Surname (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :68 :19) // Not a variable of known type: mapper
return %17 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :68 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Model2EntityMapper$Tura.App.Contracts.Models.ConnectorModel$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :70 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :70 :57)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :70 :57)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :72 :25) // new Tura.DataAccess.Contracts.Entities.ConnectorEntity()              {                  AppRefName = model.AppRefName,                  DBName = model.DBName,                  IP = model.IP,                  OtherInfo = model.OtherInfo,                  Passwd = model.Passwd,                  Port = model.Port,                  Uname = model.Uname,                  Name = model.Name              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :74 :29) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :74 :29) // model.AppRefName (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :75 :25) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :75 :25) // model.DBName (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :76 :21) // Not a variable of known type: model
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :76 :21) // model.IP (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :77 :28) // Not a variable of known type: model
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :77 :28) // model.OtherInfo (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :78 :25) // Not a variable of known type: model
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :78 :25) // model.Passwd (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :79 :23) // Not a variable of known type: model
%13 = cbde.unknown : i32 loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :79 :23) // model.Port (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :80 :24) // Not a variable of known type: model
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :80 :24) // model.Uname (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :81 :23) // Not a variable of known type: model
%17 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :81 :23) // model.Name (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :83 :19) // Not a variable of known type: mapper
return %19 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :83 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Entity2ModelMapper$Tura.DataAccess.Contracts.Entities.ConnectorEntity$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :85 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :85 :56)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :85 :56)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :87 :25) // new ConnectorModel()              {                  Id = model.Id,                  Uname = model.Uname,                  AppRefName = model.AppRefName,                  DBName = model.DBName,                  IP = model.IP,                  OtherInfo = model.OtherInfo,                  //Password shouldn't get to the user                  Passwd = "Empty",                  Port = model.Port              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :89 :21) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :89 :21) // model.Id (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :90 :24) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :90 :24) // model.Uname (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :91 :29) // Not a variable of known type: model
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :91 :29) // model.AppRefName (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :92 :25) // Not a variable of known type: model
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :92 :25) // model.DBName (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :93 :21) // Not a variable of known type: model
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :93 :21) // model.IP (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :94 :28) // Not a variable of known type: model
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :94 :28) // model.OtherInfo (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :96 :25) // "Empty" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :97 :23) // Not a variable of known type: model
%16 = cbde.unknown : i32 loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :97 :23) // model.Port (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :99 :19) // Not a variable of known type: mapper
return %18 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :99 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Model2EntityMapper$Tura.App.Contracts.Models.CorrelationRuleModel$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :101 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :101 :63)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :101 :63)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :103 :43) // new Tura.DataAccess.Contracts.Entities.CorrelationRuleEntity()              {                  name = model.name,                  rule = model.rule              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :105 :23) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :105 :23) // model.name (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :106 :23) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :106 :23) // model.rule (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :108 :19) // Not a variable of known type: mapper
return %7 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :108 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_CrossCutting.Mapper.Entity2ModelMapper$Tura.DataAccess.Contracts.Entities.CorrelationRuleEntity$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :110 :8) {
^entry (%_model : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :110 :62)
cbde.store %_model, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :110 :62)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :112 :25) // new CorrelationRuleModel()              {                  name = model.name,                  rule = model.rule              } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :114 :23) // Not a variable of known type: model
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :114 :23) // model.name (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :115 :23) // Not a variable of known type: model
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :115 :23) // model.rule (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :117 :19) // Not a variable of known type: mapper
return %7 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\Mapper.cs" :117 :12)

^1: // ExitBlock
cbde.unreachable

}
