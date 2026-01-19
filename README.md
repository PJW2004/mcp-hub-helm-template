# mcp-hub-helm-template
## Introduce
This repository is designed to make it easy to distribute [link](https://github.com/ravitemer/mcp-hub?tab=readme-ov-file)s.

## Start
### Clone
```
git clone https://github.com/ravitemer/mcp-hub.git mcp-hub
cd mcp-hub
```
### Build
```
docker build -t container-registry-url/mcp-hub:latest .
```
### Deploy (Argo Cd)
[example](./helm/values.yaml)