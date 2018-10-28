@echo off
dotnet new sln -n %1
mkdir %1.ConsoleApp
mkdir %1.Core
mkdir %1.NUnit.Tests
cd %1.ConsoleApp
dotnet new console
cd ..
cd %1.Core
dotnet new classlib
cd ..
cd %1.NUnit.Tests
dotnet new nunit
cd ..
dotnet sln %1.sln add %1.ConsoleApp/%1.ConsoleApp.csproj
dotnet sln %1.sln add %1.Core/%1.Core.csproj
dotnet sln %1.sln add %1.NUnit.Tests/%1.NUnit.Tests.csproj
cd %1.ConsoleApp
dotnet add reference ../%1.Core/%1.Core.csproj
cd ..
cd %1.NUnit.Tests
dotnet add reference ../%1.Core/%1.Core.csproj
cd ..
echo Done!
