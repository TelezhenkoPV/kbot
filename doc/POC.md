### Install Argo CD
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
### Create cluster
    k3d cluster create argo

### Login locally
    https://127.0.0.1:8080/login
### Default login: admin
### Get pass
    kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo

![Demo](https://i.ibb.co/tpZb1rz/2023-05-12-23-18-28.png)
