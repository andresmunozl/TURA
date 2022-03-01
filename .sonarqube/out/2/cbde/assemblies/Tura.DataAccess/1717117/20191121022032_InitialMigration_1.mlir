// Skipping function Up(none), it contains poisonous unsupported syntaxes

func @_Tura.DataAccess.Migrations.InitialMigration.Down$Microsoft.EntityFrameworkCore.Migrations.MigrationBuilder$(none) -> () loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :119 :8) {
^entry (%_migrationBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :119 :37)
cbde.store %_migrationBuilder, %0 : memref<none> loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :119 :37)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :121 :12) // Not a variable of known type: migrationBuilder
%2 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :122 :22) // "CorrelationRules" (StringLiteralExpression)
%3 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :121 :12) // migrationBuilder.DropTable(                  name: "CorrelationRules") (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :124 :12) // Not a variable of known type: migrationBuilder
%5 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :125 :22) // "Identities2Users" (StringLiteralExpression)
%6 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :124 :12) // migrationBuilder.DropTable(                  name: "Identities2Users") (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :127 :12) // Not a variable of known type: migrationBuilder
%8 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :128 :22) // "Identities" (StringLiteralExpression)
%9 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :127 :12) // migrationBuilder.DropTable(                  name: "Identities") (InvocationExpression)
%10 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :130 :12) // Not a variable of known type: migrationBuilder
%11 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :131 :22) // "Users" (StringLiteralExpression)
%12 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :130 :12) // migrationBuilder.DropTable(                  name: "Users") (InvocationExpression)
%13 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :133 :12) // Not a variable of known type: migrationBuilder
%14 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :134 :22) // "Connectors" (StringLiteralExpression)
%15 = cbde.unknown : none loc("C:\\Users\\flacm\\source\\repos\\Tura\\Tura.DataAccess\\Migrations\\20191121022032_InitialMigration.cs" :133 :12) // migrationBuilder.DropTable(                  name: "Connectors") (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
