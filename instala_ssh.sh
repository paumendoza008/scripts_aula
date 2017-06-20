#!/bin/bash

for i in $(cat $1) ; do

	ssh root@$i ssh-keygen
	scp /home/pau/.ssh/id_rsa.pub root@$i:/root/.ssh/authorized_keys
	ssh root@$i /etc/init.d/ssh restart
	echo Instalando ssh en $i
done;
