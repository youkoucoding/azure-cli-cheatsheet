#!/bin/bash

# Batch modification of web app configurations
# az webapp config set --name <app_name> --resource-group <resource_group> --ftps-state Disabled --out table

# define a arr


for i in $(seq 6)
do
  echo $app_test_services[$i]
done
