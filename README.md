[<img src="https://vettom-images.s3.eu-west-1.amazonaws.com/logo/vettom-banner.jpg">](https://vettom.pages.dev/) 

# demohelmrepo
This demo contains dvdemo app. Content can be updated with content value field
Once template updated, execute run.sh and publish. Github action will publish content.

## Updating repo
```bash
~/MyRepos/demohelmrepo/run.sh ; gp 
# or
helm package charts/dv-demo-app
helm repo index --url https://vettom.github.io/demohelmrepo/ --merge index.yaml .

```

- V 3.0.0  : dvdemo.vettom.github.io domain and no 443 redirect
