#!/bin/bash 

git submodule add -b master https://github.com/RedHatWorkshops/openshiftv4-devday.git .workshop/openshiftv4-devday

cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
cat .workshop/openshiftv4-devday/0-SettingUpClientTools.adoc > workshop/content/setup-environment.adoc
cat .workshop/openshiftv4-devday/1.ExploreDeveloperConsole.adoc> workshop/content/exercises/1.ExploreDeveloperConsole.adoc
cat .workshop/openshiftv4-devday/2.DeployAppUsingWebConsole.adoc> workshop/content/exercises/2.DeployAppUsingWebConsole.adoc
cat .workshop/openshiftv4-devday/3.DeployAppUsingOC.adoc workshop/content/exercises/3.DeployAppUsingOC.adoc
cat .workshop/openshiftv4-devday/4.DeployAppUsingODO.adoc> workshop/content/exercises/4.DeployAppUsingODO.adoc
cat .workshop/openshiftv4-devday/5.RedHatCodeReadyWorkspaces2.adoc> workshop/content/exercises/5.RedHatCodeReadyWorkspaces2.adoc
cat .workshop/openshiftv4-devday/6.DebugApplicationinCRW2.adoc> workshop/content/exercises/6.DebugApplicationinCRW2.adoc
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 
#cat .workshop/openshiftv4-devday/README.adoc > workshop/content/workshop-overview.adoc 

