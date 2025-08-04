#!/bin/bash

eksctl create cluster \
--name mycluster \
--region ap-south-1 \
--version 1.29 \
--zones ap-south-1a,ap-south-1b,ap-south-1c \
--nodegroup-name slaves \
--node-type t2.medium \
--nodes 5 \
--nodes-max 5 \
--nodes-min 3 \
--managed
