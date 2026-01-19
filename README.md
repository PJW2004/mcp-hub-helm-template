# mcp-hub-helm-template
## Introduce
This repository is designed to make it easy to distribute [link](https://github.com/ravitemer/mcp-hub?tab=readme-ov-file)s.

## Start
### Clone
```
git clone https://github.com/ravitemer/mcp-hub.git
git clone https://github.com/PJW2004/mcp-hub-helm-template.git
```
### Build
```
docker build --no-cache -t container-registry-url/mcp-hub:latest -f mcp-hub-helm-template/Dockerfile ./mcp-hub
```
### Deploy (Argo Cd)
[example](./helm/values.yaml)