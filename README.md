OpenShift Container Platform Developer Day - Homeroom 
=====================

This workshop uses the [OpenShift Container Platform Developer Day](https://github.com/RedHatWorkshops/openshiftv4-devday) lab content to deploy a Homeroom lab. 


```
git clone https://github.com/tosin2013/openshiftv4-devday-homeroom.git
```


```
cd openshiftv4-devday-homeroom
```

```
.workshop/scripts/update-content.sh 
```
# OpenShift Prerequestes 
* Install OpenShift Pipelines 
  * [Installing OpenShift Pipelines](https://docs.openshift.com/container-platform/4.4/pipelines/installing-pipelines.html)
* Install CodeReady WorkSpaces  
  * Install CodeReady Workspaces using the Operator
  * Or install CodeReady using the script found in `.workshop/scripts/crw/install-codeready-workspaces2.sh`

# How to test on OpenShift
```
.workshop/scripts/deploy-personal.sh --settings=develop
```

oc new-project workshop

oc project workshop

.workshop/scripts/deploy-spawner.sh hosted-workshop