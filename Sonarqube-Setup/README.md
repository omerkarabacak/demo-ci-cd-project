# Sonarqube setup on Kubernetes

Simple setup on Kubernetes

```bash
kubectl apply -f postgresql-deployment.yaml -f sonar-deployment.yaml -f postgresql-service.yaml -f sonar-service.yaml
```

Sonarqube Scan
```bash
docker run --rm -v $(pwd):/source nosinovacao/dotnet-sonar:latest bash -c "cd /source \
&& dotnet /sonar-scanner/SonarScanner.MSBuild.dll begin /k:helloworld /d:sonar.host.url=http://aa786f8ab8dda11e8bfb40688434438e-1773707740.us-west-2.elb.amazonaws.com/sonar /d:sonar.login=b939a7b20d9028bf733d92bf86d6bdb1f97e42ce /name:helloworld /version:buildVersion \
&& dotnet restore /source \
&& dotnet build -c Release /source \
&& dotnet /sonar-scanner/SonarScanner.MSBuild.dll end /d:sonar.login=b939a7b20d9028bf733d92bf86d6bdb1f97e42ce"
```