#!/bin/bash
helm package charts/dv-demo-app
helm repo index --url https://vettom.github.io/demohelmrepo/ --merge index.yaml .
git config user.email dennysv@gmail.com; git add -A . ; git commit -m "Update by DV on `date` " ; git push