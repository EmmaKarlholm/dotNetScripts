dotnet add package Microsoft.EntityFrameworkCore || exit /b 1
dotnet add package Microsoft.EntityFrameworkCore.SqlServer || exit /b 1
dotnet add package Microsoft.EntityFrameworkCore.Design || exit /b 1
dotnet add package Microsoft.EntityFrameworkCore.Tools || exit /b 1
dotnet new tool-manifest 2>nul
dotnet tool install dotnet-ef 2>nul
exit /b