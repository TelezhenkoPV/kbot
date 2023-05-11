# Comparison of Kubernetes Cluster Deployment Tools

| Tool | Description | Pros | Cons | Demo |
| --- | --- | --- | --- | --- |
| minikube | Minikube is a tool that makes it easy to run Kubernetes locally by creating a single-node cluster on your local machine. | - Easy to set up and use<br>- Provides a consistent environment for development and testing<br>- Supports many Kubernetes features | - Limited scalability<br>- Can be resource-intensive<br>- Requires manual configuration for some features | [Minikube Demo](https://minikube.sigs.k8s.io/docs/) |
| kind | Kind (Kubernetes in Docker) is a tool for running local Kubernetes clusters using Docker container "nodes". | - Easy to set up and use<br>- Supports multi-node clusters<br>- Can be used with continuous integration (CI) tools<br>- Supports many Kubernetes features | - Can be resource-intensive<br>- Not recommended for production use | [Kind Demo](https://kind.sigs.k8s.io/docs/user/quick-start/) |
| k3d | K3d is a lightweight tool for running Kubernetes clusters using Docker container "nodes". | - Lightweight and fast<br>- Supports multi-node clusters<br>- Supports many Kubernetes features<br>- Can be used with continuous integration (CI) tools | - Not recommended for production use | [K3d Demo](https://k3d.io/#getting-started) |


### At first
run `alias k=kubectl`

---

### minikube

1. Install
2. Create cluster `minikube start`
3. Verify cluster is running `k cluster-info`
4. Look at the cluster nodes `k get nodes`
5. Delete cluster `minikube delete`
6. Look at the cluster nodes `k get nodes`

---

### kind

1. Install
2. Create cluster `kind create cluster`
3. Verify cluster is running `k cluster-info`
4. Look at the cluster nodes `k get nodes`
5. Delete cluster `kind delete cluster`
6. Look at the cluster nodes `k get nodes`

---

### k3d

1. Install
2. Create cluster `k3d cluster create clusterName`
3. Verify cluster is running `k cluster-info`
4. Look at the cluster nodes `k get nodes`
5. Delete cluster `k3d cluster delete clusterName`
6. Look at the cluster nodes `k get nodes`

[![asciicast](https://asciinema.org/a/584044.svg)](https://asciinema.org/a/584044)
