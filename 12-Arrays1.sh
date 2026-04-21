#!/bin/bash

DEVOPS=("Linux" "Shell scripting" "Ansible" "Terraform" "Docker" "Kubernetes" "Git" "Jenkins" "Python")

echo "First Devops topic is: ${DEVOPS[0]}"
echo "Third Devops topic is: ${DEVOPS[2]}"

#Array means it will stores multiple values
# in DEVOPS we will store devops topic names within double quotes and with space difference.
#DEVOPS=("Linux" "Shell scripting" "Ansible" "Terraform" "Docker" "Kubernetes" "Git" "Jenkins" "Python") 
# in above syntax, The size of this syntax is 9, and The index possition starts from 0 to 8.like first devops topic is Linux.

# here,the output comes like "First Devops topic is: Linux[0]". 
# here, it takes only $DEVOPS as a variable,not including [0].
# so you can reffer variable in shell as  $NAME == ${NAME} both are same.

# now,the output comes like "First Devops topic is: Linux", "Third Devops topic is: Ansible"
