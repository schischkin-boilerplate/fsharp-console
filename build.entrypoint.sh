#!/bin/sh

echo "Validating project name.."
echo ""
echo "PROJECT_NAME: ${PROJECT_NAME}"
sleep 4

echo "Creating solution.."
dotnet new sln -o . -n ${PROJECT_NAME} --force

echo "Creating projects.."
dotnet new console -o ${PROJECT_NAME} -n ${PROJECT_NAME} --language="F#"
dotnet new xunit -o ${PROJECT_NAME}.Tests -n Test --language="F#"
dotnet sln add ${PROJECT_NAME}
dotnet sln add ${PROJECT_NAME}.Tests
dotnet add ${PROJECT_NAME}.Tests reference ${PROJECT_NAME}

echo "Installing dependencies.."
dotnet add ${PROJECT_NAME} package Logary
dotnet add ${PROJECT_NAME}.Tests package FsUnit.xUnit

echo "Done"