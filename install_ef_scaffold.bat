@echo off
setlocal enabledelayedexpansion

if "%~1"=="" goto Help
if "%~2"=="" goto Help

set "connectionString=%~1"
set "contextClassName=%~2"

call :InstallPackages
call :ScaffoldDbContext "%connectionString%" "%contextClassName%"

goto Quit

:InstallPackages
echo Installing Entity Framework packages.

dotnet add package Microsoft.EntityFrameworkCore || exit /b 1
dotnet add package Microsoft.EntityFrameworkCore.SqlServer || exit /b 1
dotnet add package Microsoft.EntityFrameworkCore.Design || exit /b 1
dotnet add package Microsoft.EntityFrameworkCore.Tools || exit /b 1
dotnet new tool-manifest 2>nul
dotnet tool install dotnet-ef 2>nul

goto :eof

:ScaffoldDbContext
echo Scaffolding DbContext for connection string: %~1

dotnet ef dbcontext scaffold "%~1" Microsoft.EntityFrameworkCore.SqlServer ^
  --output-dir Models ^
  --context-dir Data ^
  --context %~2 || exit /b 1

echo Scaffold completed successfully!
goto :eof

:Help
echo Usage: include_ef "Your Connection String Here" "Name of Your Context Class"
echo  Example:
echo   include_ef_scaffold "Data Source=MyComputer;Initial Catalog=MyDatabase;Integrated Security=True;TrustServerCertificate=True;" MyDbContext
goto Quit

:Quit
endlocal
exit /b