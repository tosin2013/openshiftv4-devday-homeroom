OpenShift Container Platform Developer Day - Homeroom 
=====================

This workshop uses the [OpenShift Container Platform Developer Day](https://github.com/RedHatWorkshops/openshiftv4-devday) lab content to deploy a Homeroom lab. 


![Workshop Overview](images/workshop-dashboard.png)

## OpenShift Prerequestes 
* Install OpenShift Pipelines 
  * [Installing OpenShift Pipelines](https://docs.openshift.com/container-platform/4.4/pipelines/installing-pipelines.html)
* Install CodeReady WorkSpaces  
  * Install CodeReady Workspaces using the Operator

Prerequestes for Ansible 
install ansible
install openshift cli

install the pip dependancies 
```
pip install kubernetes
pip install openshift
```

### Login to OpenShift

### Create  CRW deployment
```
ansible-playbook crw.yml -e  "delete_deployment=true"
```

### Delete CRW deployment
```
ansible-playbook crw.yml -e  "delete_deployment=true"


## Instructions
**Clone openshiftv4-devday-homeroom repo**
```
git clone https://github.com/tosin2013/openshiftv4-devday-homeroom.git
```

**cd into  openshiftv4-devday-homeroom folder**
```
cd openshiftv4-devday-homeroom
```

**run the script below to update the content from [openshiftv4-devday](https://github.com/RedHatWorkshops/openshiftv4-devday) repo**
```
.workshop/scripts/update-content.sh 
```


## How to test on OpenShift

**Create personal workshop deployment**
```
.workshop/scripts/deploy-personal.sh --settings=develop
```

**Build workshop deployment**
```
.workshop/scripts/build-workshop.sh
```

**Access deployment**
```
oc get route/openshiftv4-devday
```

**Access the workshop**
```
username: workshop 
password: workshop
```
