#!/bin/sh

echo "Validating project name.."
echo ""
echo "PROJECT_NAME: ${PROJECT_NAME}"
sleep 4

echo "Creating solution.."
dotnet new sln -o . -n ${PROJECT_NAME} --force

echo "Creating projects.."
dotnet new console -o ${PROJECT_NAME} -n ${PROJECT_NAME} --language="F#"
dotnet new xunit -o ${PROJECT_NAME}.Tests -n ${PROJECT_NAME} --language="F#"
dotnet add reference ${PROJECT_NAME}.Tests ${PROJECT_NAME}

echo "Installing dependencies.."
dotnet add package Logary --version 5.0.1