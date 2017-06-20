#!/bin/bash

for i in $(cat $1) ; do
	ssh root@$i init 0
done;
