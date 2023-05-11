# Cluster deployment Kubernetes

### get kube config
    code ~/.kube/config
### get current context
    kubectl config current-context
    kubectl config set-context --current --namespace kube-system
### swith into context
    kubectl config use-context k3s
### alias
    alias k=kubectl
### autocomplete
    k completion -h
    source <(kubectl completion bash)
### show commands list
    kubectl->Tab->Tab
### autocomplete for alias k
    source <(kubectl completion bash|sed s/kubectl/k/g)
### status ControlManager and Planner
    k get componentstatus
### nodes
    k get nodes
### get all active cluster objects
    k get all -A
