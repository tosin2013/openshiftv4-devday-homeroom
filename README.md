OpenShift Container Platform Developer Day - Homeroom 
=====================

This workshop uses the [OpenShift Container Platform Developer Day](https://github.com/RedHatWorkshops/openshiftv4-devday) lab content to deploy a Homeroom lab. 


![Workshop Overview](images/workshop-dashboard.png)


## Current quay.io version for hosted-workshops
```
quay.io/takinosh/openshiftv4-devday:v0.0.7
```

## Tested on 
* RHPDS - "OpenShift 4.4 Workshop"

## OpenShift prerequisites 
Install OpenShift Pipelines 
  * [Installing OpenShift Pipelines](https://docs.openshift.com/container-platform/4.4/pipelines/installing-pipelines.html)
* Install CodeReady WorkSpaces  
  * Install CodeReady Workspaces using the Operator

**prerequisites for CRW Ansible role**
* install ansible
* install openshift cli
* install the pip dependancies 
```
pip install kubernetes
pip install openshift
```

**Login to OpenShift**

**Install Service Catalog as administrator**  
[Installing Service Catalog](https://docs.openshift.com/container-platform/4.4/applications/service_brokers/installing-service-catalog.html)

**Install Template Service Broker as administrator**  
[Installing the Template Service Broker](https://docs.openshift.com/container-platform/4.4/applications/service_brokers/installing-template-service-broker.html)

**Create Shortcut to ansible role**
```
ln -s $(pwd)/.workshop/scripts/crw/code-ready/  /etc/ansible/roles/
```

**Create ansible file for deployment.**
```
cat crw.yml 
- hosts: localhost
  become: yes
  vars:
    route_subdomain: apps.ocp4.example.com
    users: 5
    workshop_che_user_password: openshift
  roles:
    - code-ready

```

**To Create  CRW deployment**
you may have to pass the ` -e 'ansible_python_interpreter=/usr/bin/python3'` if you are using python2 by default in your enviornment.
```
ansible-playbook crw.yml -e  "delete_deployment=false"
```

**Delete CRW deployment**
```
ansible-playbook crw.yml -e  "delete_deployment=true"
```

## openshiftv4-devday-homeroom deployment Instructions
**Clone openshiftv4-devday-homeroom repo**
```
git clone https://github.com/tosin2013/openshiftv4-devday-homeroom.git
```

**cd into  openshiftv4-devday-homeroom folder**
```
cd openshiftv4-devday-homeroom
```

## Deploy multi-user workshop
**Create project**
```
oc new-project workshop
```

**Create hosted workshop deployment**
```
.workshop/scripts/deploy-spawner.sh --settings=hosted-workshop
```

**Access deployment**
```
oc get route/openshiftv4-devday
```

**Access the workshop**
```
username: openshiftusername
password: openshiftpassword
```

**Destroy hosted workshop deployment**
```
.workshop/scripts/delete-spawner.sh --settings=hosted-workshop
```


## How to test/develop on OpenShift

**run the script below to update the content from [openshiftv4-devday](https://github.com/RedHatWorkshops/openshiftv4-devday) repo**
```
.workshop/scripts/update-content.sh 
```

**Create project**
```
oc new-project workshop
```

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

**Destroy personal workshop deployment**
```
.workshop/scripts/delete-personal.sh --settings=develop
```
