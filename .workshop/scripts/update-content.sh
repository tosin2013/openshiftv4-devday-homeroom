#!/bin/bash 

if [ ! -d .workshop/openshiftv4-devday ];
then
  git submodule add -b master https://github.com/RedHatWorkshops/openshiftv4-devday.git .workshop/openshiftv4-devday
fi 

cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
cp .workshop/openshiftv4-devday/0-SettingUpClientTools.adoc  workshop/content/setup-environment.adoc
cp .workshop/openshiftv4-devday/1.ExploreDeveloperConsole.adoc workshop/content/exercises/1.ExploreDeveloperConsole.adoc
cp .workshop/openshiftv4-devday/2.DeployAppUsingWebConsole.adoc workshop/content/exercises/2.DeployAppUsingWebConsole.adoc
cp .workshop/openshiftv4-devday/3.DeployAppUsingOC.adoc workshop/content/exercises/3.DeployAppUsingOC.adoc
cp .workshop/openshiftv4-devday/4.DeployAppUsingODO.adoc workshop/content/exercises/4.DeployAppUsingODO.adoc
cp .workshop/openshiftv4-devday/5.RedHatCodeReadyWorkspaces2.adoc workshop/content/exercises/5.RedHatCodeReadyWorkspaces2.adoc
cp .workshop/openshiftv4-devday/6.DebugApplicpioninCRW2.adoc workshop/content/exercises/6.DebugApplicpioninCRW2.adoc
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 

