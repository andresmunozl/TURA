func @_CrossCutting.IoCRegister.AddRegistration$Microsoft.Extensions.DependencyInjection.IServiceCollection$(none) -> none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\IoCRegister.cs" :13 :8) {
^entry (%_services : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\IoCRegister.cs" :13 :57)
cbde.store %_services, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\IoCRegister.cs" :13 :57)
br ^0

^0: // JumpBlock
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: AddRegisterRepository
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\IoCRegister.cs" :15 :42) // Not a variable of known type: services
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\IoCRegister.cs" :15 :19) // AddRegisterRepository( services) (InvocationExpression)
return %2 : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\CrossCutting\\IoCRegister.cs" :15 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function AddRegisterRepository(none), it contains poisonous unsupported syntaxes

// Skipping function AddConfiguration(none), it contains poisonous unsupported syntaxes

