#!/bin/bash


for i in $(cat $1) ; do
	ssh root@$i chmod 777 /boot/grub
	scp /home/pau/grub/fondo.xpm.gz root@i:/boot/grub
#	ssh root@$i vi /root/grub/menu.lst
	ssh root@$i cp -r /boot/grub /root
	ssh root@$i tar zcvf /root/grub.tgz /root/grub
#	scp root@$i:/root/grub.tgz /root/gru_$i.tgz
#	scp /root/grub/fondo.xpm.gz root@$i:/root/grub
	ssh root@$i chmod 666 /boot/grub/menu.lst
	ssh root@$i ls -l /boot/grub/menu.lst
	echo Algunos ajustes en $i
done;

