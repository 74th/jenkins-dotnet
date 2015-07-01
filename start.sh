docker run -d \
    -p 8080:8080 \
    --name jenkins4dotnet \
    -v /Users/atsushi/var/jenkinshome:/var/lib/jenkins \
    -v /Users/atsushi/var/jenkinslog:/var/log/jenkins \
    74th/jenkins4dotnet
