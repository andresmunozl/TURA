func @_Tura.DataAccess.TuraDBContext.OnModelCreating$Microsoft.EntityFrameworkCore.ModelBuilder$(none) -> () loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :26 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :26 :48)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :26 :48)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: ConnectorEntityConfig
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :28 :51) // Not a variable of known type: modelBuilder
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :28 :51) // modelBuilder.Entity<ConnectorEntity>() (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :28 :12) // ConnectorEntityConfig.setEntityBuilder(modelBuilder.Entity<ConnectorEntity>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: UserEntityConfig
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :29 :46) // Not a variable of known type: modelBuilder
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :29 :46) // modelBuilder.Entity<UserEntity>() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :29 :12) // UserEntityConfig.setEntityBuilder(modelBuilder.Entity<UserEntity>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: IdentityEntityConfig
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :30 :50) // Not a variable of known type: modelBuilder
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :30 :50) // modelBuilder.Entity<IdentityEntity>() (InvocationExpression)
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :30 :12) // IdentityEntityConfig.setEntityBuilder(modelBuilder.Entity<IdentityEntity>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CorrelationRuleEntityConfig
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :31 :57) // Not a variable of known type: modelBuilder
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :31 :57) // modelBuilder.Entity<CorrelationRuleEntity>() (InvocationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :31 :12) // CorrelationRuleEntityConfig.setEntityBuilder(modelBuilder.Entity<CorrelationRuleEntity>()) (InvocationExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Identity2UserEntityConfig
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :32 :55) // Not a variable of known type: modelBuilder
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :32 :55) // modelBuilder.Entity<Identity2UserEntity>() (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :32 :12) // Identity2UserEntityConfig.setEntityBuilder(modelBuilder.Entity<Identity2UserEntity>()) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :34 :12) // base (BaseExpression)
%17 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :34 :33) // Not a variable of known type: modelBuilder
%18 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\TuraDBContext.cs" :34 :12) // base.OnModelCreating(modelBuilder) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
