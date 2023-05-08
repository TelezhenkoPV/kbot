Task 3:
====
runc spec

JSON
terminal: false

"args": [
"sh", "-c", "while true; do { echo -e 'HTTP/1.1 200 OK\n\n Version 1.0.0'; } | nc -vlp 8080; done"
],



####JSON 142 line
####{
####    "type": "network",
####    "path": "/var/run/netns/runc"
####},

####sudo ip netns add runc
####sudo bash
####brctl addbr runc1
####ip link set runc1 up
####ip addr add 192.168.0.1/24 dev runc1
####ip link add name veth-host type veth peer name veth-guest
####ip link set veth-host up
####brctl addif runc0 veth-host
####ip link set veth-guest netns runc
####ip netns exec runc ip link set veth-guest name eth1
####ip netns exec runc ip addr add 192.168.0.2/24 dev eth1
####ip netns exec runc ip link set eth1 up
####ip netns exec runc ip route add default via 192.168.0.1
####exit
####sudo runc run demo
####
####separate terminal:
####curl 192.168.0.2:8080
####
####======
####sudo runc kill demo KILL

Task 4:
====
####docker build .
####docker images
####docker tag be0b2cc02bb3 gcr.io/k8s-k3s-386109/demo:v1.0.0
####docker push gcr.io/k8s-k3s-386109/demo:v1.0.0
####
####if login needded
####gcloud auth login
####gcloud config set project k8s-k3s
####gcloud auth configure-docker
####
####minikube start
####kubectl config current-context
####alias k=kubectl
####k create deploy demo --image gcr.io/k8s-k3s/demo:v1.0.0
####k get deploy -o wide
####k expose deploy/demo --port 80 --target-port 8080
####k get svc
####k get ep
####k port-forward svc/demo 8088:80&
####curl localhost:8088
####k logs deploy/demo