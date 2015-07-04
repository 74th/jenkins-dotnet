# Jenkin for .NET projects

This is a docker image of Jenkins for .NET projects.
We need windows servers for .NET CI, this presented Linux contener with mono products.

```
docker pull 74th/jenkins4dotnet
docker run -d --name jenkins4dotnet -p 8080:8080 74th/jenkins4dotnet
```

You can access http://dockerip:8080/ .

## for Japanese

.NET プロジェクト用のJenkinsイメージです。
.NET のCIのためにはWindowsServerが必要でしたが、monoを使ってLinuxコンテナで実現します。

## feature

* support Nuget
* support local Nuget repositories
* support StyleCop https://stylecop.codeplex.com/
* support FxCop https://fxcopinstaller.codeplex.com/
* support code covarage
* support automatic document
* support completey running behind proxy
