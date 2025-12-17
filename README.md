# dotNetScripts
Just a collection of useful scripts for .NET


## bakehere.bat
Creates a 64-bit Windows .exe with built-in dependencies out of the project in the current directory.

Either drop the script in your folder and just run it, or consider adding the folder which contains `bakehere.bat` to your PATH ([how to](https://www.wikihow.com/Change-the-PATH-Environment-Variable-on-Windows)) to run it from CLI whenever you want.

## install_ef.bat
Installs the latest version of Entity Framework in the current directory.

Either drop the script in your folder and just run it, or consider adding the folder which contains `install_ef.bat` to your PATH ([how to](https://www.wikihow.com/Change-the-PATH-Environment-Variable-on-Windows)) to run it from CLI whenever you want.

## install_ef_scaffold.bat
Installs the latest version of Entity Framework in the current directory, and then scaffolds the database given on your command line.

**Important:** Requires command line use! Usage:  
`install_ef_scaffold "Your connection string here" YourDbContextHere`

Consider adding the folder which contains `install_ef_scaffold.bat` to your PATH ([how to](https://www.wikihow.com/Change-the-PATH-Environment-Variable-on-Windows)) to run it from CLI whenever you want.

## makesln.bat
Creates Visual Studio project files (.sln and .csproj) for the project in the current directory.

Either drop the script in your folder and just run it, or consider adding the folder which holds `makesln.bat` to your PATH ([how to](https://www.wikihow.com/Change-the-PATH-Environment-Variable-on-Windows)) to run it from CLI whenever you want.
