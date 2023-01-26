#!/bin/bash

# Batch modification of web app configurations
az webapp config set --name <app_name> --resource-group <resource_group> --ftps-state Disabled --output none

# define a arr
array_var=('test1' 'test2' 'test3' 'test4')
array_var[4]="test5"

echo ${array_var[2]}
echo ${array_var[3]}
echo ${array_var[4]}

echo ${array_var[*]}
