# Jenkin for .NET projects

This is a docker image of Jenkins for .NET projects.
We need windows servers for .NET CI, this presented Linux contener with mono products.

```
docker pull 74th/jenkins4dotnet
docker run -d --name jenkins4dotnet -p 8080:8080 74th/jenkins4dotnet
```

You can access http://yourdockerip:8080/ .

## Features

* no need to use windows server
* include MSBuild plugin

## how to build .NET solution

In build of configulation, choose "Build a Visual Studio project or solution using MSBuild" and set your visual studio solution file.

## for Japanese

.NET プロジェクト用のJenkinsイメージです。
.NET のCIのためにはWindowsServerが必要でしたが、monoを使ってLinuxコンテナで実現します。

## 使い方

ビルドの設定において、"Build a Visual Studio project or solution using MSBuild" を選び、MSBuild Build File に、ソリューションファイル（.sln）を指定します。

## goals

* support Nuget
* support local Nuget repositories
* support StyleCop https://stylecop.codeplex.com/
* support FxCop https://fxcopinstaller.codeplex.com/
* support code covarage
* support automatic document
* support completey running behind proxy
