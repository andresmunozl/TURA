func @_TuraFront.Program.Main$string$$$(none) -> () loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :13 :8) {
^entry (%_args : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :13 :32)
cbde.store %_args, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :13 :32)
br ^0

^0: // SimpleBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: CreateWebHostBuilder
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :15 :33) // Not a variable of known type: args
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :15 :12) // CreateWebHostBuilder(args) (InvocationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :15 :12) // CreateWebHostBuilder(args).Build() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\TuraFront\\Program.cs" :15 :12) // CreateWebHostBuilder(args).Build().Run() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
