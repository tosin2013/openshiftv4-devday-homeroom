# CodeReady Workspace

**Create Shortcut to ansible role**
```
ln -s $pwd/.workshop/scripts/crw/code-ready/  /etc/ansible/roles/
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
```
ansible-playbook crw.yml -e  "delete_deployment=true"
```