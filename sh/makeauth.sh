#!/bin/bash

#�����Լ���homeĿ¼��ִ��

#����keygen
ssh-keygen -t rsa
#�������ι�ϵ
user="forum"
machine="192.168.1.132"
for i in $machine
do
	        scp ~/.ssh/id_rsa.pub ${user}@$i:./
		        ssh ${user}@$i 'cat id_rsa.pub >>.ssh/authorized_keys; chmod 700 .ssh;chmod 600 .ssh/authorized_keys'
		done
