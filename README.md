# Kubernetes

Configure Infrastructure

sudo swapoff -a

set host names of nodes

sudo vim /etc/hosts

get priavate ips of each node and add this to each server

45.14.48.178 master
45.14.48.179 worker1
45.14.48.180 worker2

we can now use these names instead of typing the IPs, when nodes talk to each other. After that, assign a hostname to each of these servers.
on master server

sudo hostnamectl set-hostname master 

on worker1 server
sudo hostnamectl set-hostname worker1 

on worker2 server
sudo hostnamectl set-hostname worker2

Initialize K8s cluster
sudo kubeadm init

Check kubelet process running
service kubelet status
systemctl status kubelet

Check extended logs of kubelet service
journalctl -u kubelet

Access cluster as admin
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

Kubectl commands
get node information
kubectl get node
get pods in kube-system namespace
kubectl get pod -n kube-system
get pods from all namespaces

kubectl get pod -A

get wide output

kubectl get pod -n kube-system -o wide

Install pod network plugin

Install CLI

CILIUM_CLI_VERSION=$(curl -s https://raw.githubusercontent.com/cilium/cilium-cli/main/stable.txt)
CLI_ARCH=amd64
if [ "$(uname -m)" = "aarch64" ]; then CLI_ARCH=arm64; fi
curl -L --fail --remote-name-all https://github.com/cilium/cilium-cli/releases/download/${CILIUM_CLI_VERSION}/cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum}
sha256sum --check cilium-linux-${CLI_ARCH}.tar.gz.sha256sum
sudo tar xzvfC cilium-linux-${CLI_ARCH}.tar.gz /usr/local/bin
rm cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum}

Install the plugin

cilium install 


Link to the Cilium installation guide

check cilium status

cilium status
kubectl -n kube-system exec cilium-2hq5z -- cilium-dbg status
cilium connectivity tes

Join worker nodes

create and execute script

vim install-containerd.sh
chmod u+x install-containerd.sh
./install-containerd.sh

on master

kubeadm token create --help
kubeadm token create --print-join-command

copy the output command and execute on worker node as ROOT

sudo kubeadm join 172.31.43.99:6443 --token 9bds1l.3g9ypte9gf69b5ft --discovery-token-ca-cert-hash sha256:xxxx

start a test pod

kubectl run test --image=nginx
-------------------------------------------------------------------------------------------------------------
****Installing Container Runtime**

Install and configure prerequisites 

# sysctl params required by setup, params persist across reboots
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.ipv4.ip_forward = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system

Verify that net.ipv4.ip_forward is set to 1 with:

sysctl net.ipv4.ip_forward

step-2
Installing Containerd

sudo apt-get update
sudo apt-get install containerd

Customizing containerd

create a folder
sudo mkdir /etc/containerd

command for create config.toml file
containerd config default > /etc/containerd/config.toml

configuring the systemd cgroup driver

open config.toml and set to be true
SystemdCgroup = true

repeat the all the above steps to install in workernodes

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**installing kubeadm,kubelet and kubectl**

sudo apt-get update
# apt-transport-https may be a dummy package; if so, you can skip that package
sudo apt-get install -y apt-transport-https ca-certificates curl gpg

**Download the public signing key for the Kubernetes package repositories. The same signing key is used for all repositories so you can disregard the version in the URL**:

curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.28/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

**Add the appropriate Kubernetes apt repository. Please note that this repository have packages only for Kubernetes 1.28; for other Kubernetes minor versions, you need to change the Kubernetes minor version in the URL to match your desired minor version (you should also check that you are reading the documentation for the version of Kubernetes that you plan to install).**

echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.28/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list

sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
sudo apt-mark hold kubelet kubeadm kubectl
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Connect to cluster(kubeconfig and kubectl)**

create a folder 

mkdir -p ~/.kube

copy admin.conf file to ~/.kube/config folder

sudo cp -i /etc/kubernetes/admin.conf ~/.kube/config

make current user and current group to admin.conf file

sudo chown $(id -u):$(id -g) ~/.kube/config
