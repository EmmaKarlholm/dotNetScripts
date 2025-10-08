@echo off
setlocal

REM Save current directory and project name
set "PROJECT_DIRECTORY=%cd%"
for %%F in ("%PROJECT_DIRECTORY%") do set "PROJECT_NAME=%%~nxF"
set "TEMPORARY_STORAGE=%PROJECT_DIRECTORY%\__delete_me_plz"

REM Create new project using supplied code in temporary storage
REM Then move .csproj from temporary storage & create .sln before nuking from orbit
dotnet new console -n "%PROJECT_NAME%" --output "%TEMPORARY_STORAGE%" >nul
move "%TEMPORARY_STORAGE%\%PROJECT_NAME%.csproj" "%PROJECT_DIRECTORY%" >nul
dotnet new sln -n "%PROJECT_NAME%" >nul
dotnet sln "%PROJECT_NAME%.sln" add "%PROJECT_NAME%.csproj" >nul

REM Take out the trash, a k a the temporary project build we made before
rd /s /q "%TEMPORARY_STORAGE%"

echo %PROJECT_NAME%.csproj and %PROJECT_NAME%.sln created in: %PROJECT_DIRECTORY%
endlocal