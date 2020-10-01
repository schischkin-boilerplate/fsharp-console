# fsharp-console
Simple console boilerplate which includes Docker, FsUnit, xUnit, Logary and dryloc

## Requirements
* Docker

## Installation
1. Build the image
  `$ docker build . -f Build.Dockerfile -t fsharp-console-build`  
2. Start the container and let it do the magic.
  `$ docker run -v $PWD:/app -e PROJECT_NAME=<INSERT YOUR PROJECT NAME HERE> fsharp-console-build`  
