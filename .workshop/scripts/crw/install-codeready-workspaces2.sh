#!/bin/bash 

oc new-project code-ready-workspace

oc create -f configs/crw-sub.yml