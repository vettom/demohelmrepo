# demohelmrepo

## Updating repo
```bash
helm package charts/dv-demo-app
helm repo index --url https://vettom.github.io/demohelmrepo/ --merge index.yaml .

```