#!/bin/bash

for i in $(cat $1) ; do
	ssh root@$i chmod a+w /etc/sudoers
	scp elimina_sudo_segon.sh root@$i:/root
	scp sudoers root@$i:/root/sudoers
	ssh root@$i /root/elimina_sudo_segon.sh
	#ssh root@$i chmod a+w /root/sudoers
	ssh root@$i rm /root/sudoers
	ssh root@$i rm elimina_sudo_segon.sh
	ssh root@$i chmod 440 /etc/sudoers
	echo Eliminando sudoers en $i
done;
