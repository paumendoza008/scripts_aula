#!/bin/bash

for i in $(cat $1) ; do
 instala_ssh.sh $1
# instala_ajustes.sh $1
done;

for i in $(cat $1) ; do
 instala_copia.sh $1
done;

for i in $(cat $1) ; do
 instala_task.sh $1
 instala_xmms.sh $1
done;

