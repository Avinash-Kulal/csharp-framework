cd JuegoFrameworkTemplates
rm -f bin/Release/*.nupkg
dotnet pack
dotnet nuget push "bin/Release/*.nupkg" --api-key $NUGET_API_KEY --source https://api.nuget.org/v3/index.json
# dotnet new uninstall JuegoFramework.Templates
# dotnet new install bin/Release/*.nupkg
