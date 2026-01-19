# mcp-hub-helm-template
## Introduce
This repository is designed to make it easy to distribute [link](https://github.com/ravitemer/mcp-hub?tab=readme-ov-file)s.<br/>
If you are looking for mcp repository, [here](https://github.com/mcp?utm_source=pytorchkr&ref=pytorchkr).

## Start
### Clone
```bash
git clone https://github.com/ravitemer/mcp-hub.git
git clone https://github.com/PJW2004/mcp-hub-helm-template.git
```
### Build
```bash
docker build --no-cache -t container-registry-url/mcp-hub:latest -f mcp-hub-helm-template/Dockerfile ./mcp-hub
```
### Container Registry Push
```bash
docker push container-registry-url/mcp-hub:latest
```
### Deploy (Argo Cd)
[example](./helm/values.yaml)