#!/bin/bash 

if [ ! -d .workshop/openshiftv4-devday ];
then
  git submodule add -b master --force https://github.com/RedHatWorkshops/openshiftv4-devday.git .workshop/openshiftv4-devday 
fi 

#cp .workshop/openshiftv4-devday/README.adoc  workshop/content/workshop-overview.adoc 
#cp .workshop/openshiftv4-devday/0-SettingUpClientTools.adoc  workshop/content/setup-environment.adoc
cp .workshop/openshiftv4-devday/1.ExploreDeveloperConsole.adoc workshop/content/exercises/1-ExploreDeveloperConsole.adoc
cp .workshop/openshiftv4-devday/2.DeployAppUsingWebConsole.adoc workshop/content/exercises/2-DeployAppUsingWebConsole.adoc
cp .workshop/openshiftv4-devday/3.DeployAppUsingOC.adoc workshop/content/exercises/3-DeployAppUsingOC.adoc
cp .workshop/openshiftv4-devday/4.DeployAppUsingODO.adoc workshop/content/exercises/4-DeployAppUsingODO.adoc
cp .workshop/openshiftv4-devday/5.RedHatCodeReadyWorkspaces2.adoc workshop/content/exercises/5-RedHatCodeReadyWorkspaces2.adoc
cp .workshop/openshiftv4-devday/6.DebugApplicationinCRW2.adoc workshop/content/exercises/6-DebugApplicationinCRW2.adoc
cp .workshop/openshiftv4-devday/7.MultiTieredApp.adoc workshop/content/exercises/7-MultiTieredApp.adoc
cp .workshop/openshiftv4-devday/8.ApplicationScaling.adoc workshop/content/exercises/8-ApplicationScaling.adoc
cp .workshop/openshiftv4-devday/9.DeployBinaryArtifacts.adoc workshop/content/exercises/9-DeployBinaryArtifacts.adoc
cp .workshop/openshiftv4-devday/14.UsingConfigmaps.adoc workshop/content/exercises/14-UsingConfigmaps.adoc
cp .workshop/openshiftv4-devday/15.UsingPersistentStorage.adoc workshop/content/exercises/15-UsingPersistentStorage.adoc
cp .workshop/openshiftv4-devday/17.CodePromotion.adoc workshop/content/exercises/17-CodePromotion.adoc
cp .workshop/openshiftv4-devday/19.TektonPipeline.adoc workshop/content/exercises/19-TektonPipeline.adoc
cp .workshop/openshiftv4-devday/20.BlueGreenDeployment.adoc workshop/content/exercises/20-BlueGreenDeployment.adoc
cp .workshop/openshiftv4-devday/21.ABTesting.adoc workshop/content/exercises/21-ABTesting.adoc
cp .workshop/openshiftv4-devday/24.TroubleshootingApplications.adoc workshop/content/exercises/24-TroubleshootingApplications.adoc

cp -r .workshop/openshiftv4-devday/images workshop/content/exercises/