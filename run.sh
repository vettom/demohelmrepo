#!/bin/bash
cd ~/MyRepos/demohelmrepo
helm lint charts/dv-demo-app
if [ $? -ne 0 ]
then
	echo "ERROR: Helm lint failed"
	exit 1
fi
helm package charts/dv-demo-app
helm repo index --url https://vettom.github.io/demohelmrepo/ --merge index.yaml .
git config user.email dennysv@gmail.com; git add -A . ; git commit -m "Update by DV on `date` " ; git push