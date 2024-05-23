#!/bin/bash

cd ~/MyRepos/demohelmrepo
for i in `ls charts`
do
	echo "---- Creating chart for $i ---- "
	helm lint charts/$i  > /dev/null
	if [ $? -ne 0 ]
	then
		echo "ERROR: Helm lint failed for $i"
		exit 1
	else
		echo " INFO : Lint success for $i"
	fi
	# Create Hel package in local
	helm package charts/$i
done

helm repo index --url https://vettom.github.io/demohelmrepo/ --merge index.yaml .
git add -A . ; git commit -m "Update by DV on `date` " ; git push
