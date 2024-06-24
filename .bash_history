sudo apt-get update
sudo -i
exit
sudo swapoff -a
exit
sudo vim /etc/hosts
sudo hostnamectl set-hostname master
exit
sudo kubeadm init
ls /etc/kubernetes/pki
ls /etc/kubernetes/pki/etcd/
ls /etc/kubernetes
service kubelete status
service kubelet status
sudo cat  /etc/kubernetes/manifests/ | less
sudo cat  /etc/kubernetes/manifests/kube-apiserver.yaml | less
sudo apt-get update
kubectl get node
sudo kubectl get node --kubeconfig /etc/kubernetes/admin.conf 
cd /etc/kubernetes/
ls
code .
vim admin.conf 
sudo vim admin.conf 
cd
sudo -i 
ls ~/.kube
mkdir ~/.kube
sudo cp -i /etc/kubernetes/admin.conf ~/.kube/config
ls -l ~/.kube/config 
echo ($id -u)
echo $(id -u)
sudo chown $(id -u):$(id -g) ~/.kube/config
ls -l ~/.kube/config 
kubectl get nodes
CILIUM_CLI_VERSION=$(curl -s https://raw.githubusercontent.com/cilium/cilium-cli/main/stable.txt)
CLI_ARCH=amd64
if [ "$(uname -m)" = "aarch64" ]; then CLI_ARCH=arm64; fi
curl -L --fail --remote-name-all https://github.com/cilium/cilium-cli/releases/download/${CILIUM_CLI_VERSION}/cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum}
sha256sum --check cilium-linux-${CLI_ARCH}.tar.gz.sha256sum
sudo tar xzvfC cilium-linux-${CLI_ARCH}.tar.gz /usr/local/bin
rm cilium-linux-${CLI_ARCH}.tar.gz{,.sha256sum}
cilium install --set ipam.operator.clusterPoolIPv4PodCIDRList="10.1.0.0/9"
cilium status
cilium status --wait
kubectl get node
kubcetl get pods -n kube-sysytem
kubectl get pods -n kube-system
kubectl describe pod coredns-76f75df574-cfqns -n kube-system 
kubectl get pods -o wide  -n kube-system
vim nginx-deployment.yaml
kubectl apply -f nginx-deployment.yaml 
kubectl get pod
kubectl delete pod test test2
kubectl get pod
kubectl get deployment
vim nginx-service.yaml
kubectl apply -f nginx-service.yaml 
kubectl get svc
kubetctl describe svc nginx-service
kubectl describe svc nginx-service
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
kubectl describe svc nginx-service
kubectl get pod -o wide
kubectl get ep
kubectl get all
kubectl edit svc nginx-service
kubectl edit deployment nginx-deployment
kubectl get svc nginx-service -0 yaml
kubectl get svc nginx-service -o yaml
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
kubectl describe svc nginx-service
kubectl describe deployment nginx-deployment
kubectl get deployment --show-- lables
kubectl get deployment --show--lables
kubectl get deployment --show--labels
kubectl get deployment --show-labels
kubectl logs -l app=nginx
kubectl get pod -n kube-system --show-labels
kubectl get node --show-labels
kubectl get pods
kubectl --help
kubectl scale --help
kubectl scale nginx-deployment.yaml --replicas=4
ls 
kubectl scale deployment  nginx-deployment.yaml --replicas=4
kubectl scale deployment  nginx-deployment --replicas=4
kubeclt get pods
kubeclt get pod
kubectl get pod
kubectl scale deployment  nginx-deployment --replicas=3
kubectl get pod
kubectl scale --help
kubectl scale deployment  nginx-deployment --replicas=5 --record=true
kubectl scale deployment  nginx-deployment --replicas=3 --record
kubectl rollout --help
kubectl rollout history --help
kubectl rollout history deployement/nginx-deployment
kubectl rollout history deployment/nginx-deployment
kubectl get pods
kubectl run test-nginx-svc --image=nginx
kubectl get pods
kubectl get pod
kubectl apply nginx-deployment.yaml 
kubectl run nginx-deployment.yaml 
kubectl --help
kubectl create --help
kubectl create deployment nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl get pod
kubectl delete deployment nginx-deployment-7c79c4bf97-47gqf
kubectl delete --help
kubectl delete pods --all
kubectl get pods
kubectl delete pods --all
exit
kubectl delete pods --all
kubectl get pod  -n kube-system
kubectl get pod  -n kube-system --show-lables
kubectl get pod  -n kube-system --show-labels
kubectl logs -n kube-system -l k8s-app=kube-dns
kubectl get pods
kubectl exec -it test-nginx-svc --bash
kubectl exec -it test-nginx-svc -- bash
kubectl get svc -n kube-system | grep dns
sudo cat /var/lib/kubelet/config.yaml 
kubect get ns
kubectl get ns
kubectl create ns test-ns
kubectl run test-nginx-svc -n test-ns --image=nginx
kubectl get pod -n test-ns
kubectl get svc
kubectl exec -it test-nginx-svc -n test-ns -- bash
kubectl get pod -o wide
ls /etc/kubernetes/manifests/
sudo vim /etc/kubernetes/manifests/kube-apiserver.yaml 
kubeadm config print  inti-defaults
kubeadm config print  init-defaults
alias k=kubectl 
k get pod
kubectl create  service clusterip test-new-cidr --tcp=80:80 --dry-run=client -o yaml > my-svc.yaml
ls
cat my-svc.yaml 
k create deployment --help
k create deployment my-deployment image=nginx:1.20 port=80 --replicas=3 --dry-run=client -o yaml > my-deployment.yaml
k create deployment my-deployment --image=nginx:1.20 port=80 --replicas=3 --dry-run=client -o yaml > my-deployment.yaml
k create deployment my-deployment --image=nginx:1.20 --port=80 --replicas=3 --dry-run=client -o yaml > my-deployment.yaml
ls
cat my-deployment.yaml 
vim my-deployment.yaml 
k run my-pod --help
k run my-pod --image=nginx:1.20 --labels="app=nginx,env=prod" --dry-run=client -o yaml > my-pod.yaml
vim my-pod.yaml 
exit
kubectl get svc
kubectl delete svc  nginx-service
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
kubectl get svc
kubectl delete svc  nginx-service
vim nginx-service.yaml 
kubectl apply -f nginx-service.yaml 
kubectl get svc
vim nginx-service.yaml 
exit
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
helm
helm version
ls
ls ~/.kube/config 
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx
helm ls
kubectl get pods
kubectl getsvc
kubectl get  svc
alias k=kubectl
k get nodes
k get svc
k delete svc nginx-service
k get svc
vim nginx-service.yaml 
k apply -f nginx-service.yaml 
k get svc
k create ingress --help
kubectl ingress my-app-ingress --rule=host/path=service:port --dry-run=client -o yaml > my-ingress.yaml
kubectl create ingress my-app-ingress --rule=host/path=service:port --dry-run=client -o yaml > my-ingress.yaml
vim my-ingress.yaml 
ufw status  
sudo su
vim my-ingress.yaml 
kubectl apply -f my-ingress.yaml 
vim my-ingress.yaml 
kubectl apply -f my-ingress.yaml 
k gey svc
k get svc
vim my-ingress.yaml 
k get ingress
kubectl get ingress
kubectl get node
kubectl get pdo
kubectl get pod
kubectl ingress --help
kubectl get ingress --help
kubectl apply -f my-ingress.yaml 
kubectl get svs
kubectl get svc
kubectl get ingress
vim nginx-deployment.yaml 
vim nginx-service.yaml 
vim my-pod.yaml 
kubectl get pod -0 wide
kubectl get pod -o wide
kubectl get svc
vim nginx-service.yaml 
ls
vim my-ingress.yaml 
ls
vim nginx-service.yaml 
k get svc
vim nginx-service.yaml 
kubectl get svc
ls
cat nginx-service.yaml 
cat my-ingress.yaml 
kubcetl delete ingress ingress-nginx-controller
kubectl delete ingress ingress-nginx-controller
kubcectl get svc
kubectl get svc
kubectl edit ValidationWebhoolConfiguration
kubectl edit ValidationWebhookConfiguration
kubectl edit ValidatingWebhookConfiguration
kubectl get ingress
kubectl delete svc nginx-service
kubectl get svc
kubectl apply -f nginx-service.yaml 
kubectl get svc
ls
kubectl get pod
ls
cat my-svc.yaml 
cat nginx-service.yaml 
kubectl get ingress
kubectl delete ingress my-app-ingress
vim my-ingress.yaml 
kubcetl apply -f my-ingress.yaml 
kubectl apply -f my-ingress.yaml 
kubectl get ingress
kubectl describe ingress my-app-ingress
vim my-ingress.yaml 
kubectl apply -f my-ingress.yaml 
kubectl get pod
kubectl create clustrerole --help
kubectl create clusterrole dev-cr --verb=get,list,create,update,delete --resource=deployments.apps,pods --dry-run=client -o yaml > dev-cr.yaml
vim dev-cr.yaml 
exit
ls
vim dev-cr.yaml 
kubectl apply -f dev-cr.yaml 
kubectl --kubeconfig config apply -f dev-cr.yaml 
kubectl --kubeconfig config clusterroe
kubectl --kubeconfig config get clusterroe
kubectl --kubeconfig config get clusterrole
kubectl --kubeconfig config descirbe clusterrole dev-cr
kubectl --kubeconfig config describe clusterrole dev-cr
kubectl create clusterrolebindings --help
kubectl create clusterrolebinding --help
kubectl create clusterrolebinding dev-crb --clusterrole=dev-cr --user=tom  --dry-run=client -o yaml > dev-crb.yaml
vim dev-crb.yaml 
kubectl apply --kubeconfig config -f dev-crb.yaml
kubectl describe --kubeconfig config  clusterrolebinding  dev-crb
kubectl get pod
kubectl get svc
kubectl get node
kubectl auth --kubeconfig config can-i  create pod --as tom
kubectl auth --kubeconfig config can-i  get node --as tom
exit
kubectl create serviceaccount --help
kubectl create serviceaccount jenkins --dry-run=client -o yaml > jenkins-sa.yaml
vim jenkins-sa.yaml 
cp config ~/.kube/config  
kubectl get node
kubectl apply -f jenkins-sa.yaml 
kubectl create token jenkins
kubectl describe seviceaccount jenkins
kubectl describe serviceaccount jenkins
kubectl get secrets
vim jenkins-sa.yaml 
kubectl apply -f jenkins-sa.yaml 
vim jenkins-sa.yaml 
kubectl apply -f jenkins-sa.yaml 
vim jenkins-sa.yaml 
kubectl create secret --help
vim jenkins-secret.yaml
kubectl apply -f jenkins-secret.yaml 
vim jenkins-secret.yaml
kubectl apply -f jenkins-secret.yaml 
kubectl get serviceaccounts
kubectl describe servicaccount jenkins
kubectl describe serviceaccount jenkins
kubect get secret
kubectl get secret
kubectl describe secret jenkins-secret.yaml 
kubectl describe secret jenkins-secret
kubectl get secret jenkins-secret -o yaml
echo ZXlKaGJHY2lPaUpTVXpJMU5pSXNJbXRwWkNJNklqaFNka0oxUjNJeWNscDJYMHhsV1ZVNE1URnNlR3hCYTJrMk5YRm5kSEJGYVd0U2FrSmllbmh0UmpRaWZRLmV5SnBjM01pT2lKcmRXSmxjbTVsZEdWekwzTmxjblpwWTJWaFkyTnZkVzUwSWl3aWEzVmlaWEp1WlhSbGN5NXBieTl6WlhKMmFXTmxZV05qYjNWdWRDOXVZVzFsYzNCaFkyVWlPaUprWldaaGRXeDBJaXdpYTNWaVpYSnVaWFJsY3k1cGJ5OXpaWEoyYVdObFlXTmpiM1Z1ZEM5elpXTnlaWFF1Ym1GdFpTSTZJbXBsYm10cGJuTXRjMlZqY21WMElpd2lhM1ZpWlhKdVpYUmxjeTVwYnk5elpYSjJhV05sWVdOamIzVnVkQzl6WlhKMmFXTmxMV0ZqWTI5MWJuUXVibUZ0WlNJNkltcGxibXRwYm5NaUxDSnJkV0psY201bGRHVnpMbWx2TDNObGNuWnBZMlZoWTJOdmRXNTBMM05sY25acFkyVXRZV05qYjNWdWRDNTFhV1FpT2lJNVl6bGlPR1V4WVMwMVpESXhMVFF4WkRBdE9XTTFNaTFoTW1JNU5UQTFabVptTTJFaUxDSnpkV0lpT2lKemVYTjBaVzA2YzJWeWRtbGpaV0ZqWTI5MWJuUTZaR1ZtWVhWc2REcHFaVzVyYVc1ekluMC5ZWWhRN2tiMlNUQ3VpemRxZGxzenF1RXFKcHAxZ3hxSkxXcVdTUlcyM2dRR2s5ZGZab0RMSHduTnRKVk5MQkEzOF9IM2hLMUNTM180RW1KRlN3WkFrSEtKeVM4OThqZk9YTmRMN3NlVzVTN2l6d2JDaldWaEtGaFR5MW81RFctaTVEam51Wm01QjZHRG0yWTEza1pYN3hxUF9oNm9HU25YWkhNejhvb1dSeVRPaGJPMlBoZnAyOHNMTkdtbG1FUWdESDlsYXkwVDBvcldrMEhvWURwMHJYR0RMaTdyVmZvN3pXNXU3dFl2b2gxQ2VhLTBSeDA1YWwxTk9ENWpDd0laS1p6WmcxeTFMTUNjb0xVaEV4TjlndG5RX1NYcmhRWTdld01UdGZJMlo2MXRBMTFUZlY2MzJ0RWtiajliU2c0NGtLeVNfTHd3ZV9pTzV5N2tvRXo2SHc= | base64 --decode 
token=eyJhbGciOiJSUzI1NiIsImtpZCI6IjhSdkJ1R3Iyclp2X0xlWVU4MTFseGxBa2k2NXFndHBFaWtSakJienhtRjQifQ.eyJpc3MiOiJrdWJlcm5ldGVzL3NlcnZpY2VhY2NvdW50Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9uYW1lc3BhY2UiOiJkZWZhdWx0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZWNyZXQubmFtZSI6ImplbmtpbnMtc2VjcmV0Iiwia3ViZXJuZXRlcy5pby9zZXJ2aWNlYWNjb3VudC9zZXJ2aWNlLWFjY291bnQubmFtZSI6ImplbmtpbnMiLCJrdWJlcm5ldGVzLmlvL3NlcnZpY2VhY2NvdW50L3NlcnZpY2UtYWNjb3VudC51aWQiOiI5YzliOGUxYS01ZDIxLTQxZDAtOWM1Mi1hMmI5NTA1ZmZmM2EiLCJzdWIiOiJzeXN0ZW06c2VydmljZWFjY291bnQ6ZGVmYXVsdDpqZW5raW5zIn0.YYhQ7kb2STCuizdqdlszquEqJpp1gxqJLWqWSRW23gQGk9dfZoDLHwnNtJVNLBA38_H3hK1CS3_4EmJFSwZAkHKJyS898jfOXNdL7seW5S7izwbCjWVhKFhTy1o5DW-i5DjnuZm5B6GDm2Y13kZX7xqP_h6oGSnXZHMz8ooWRyTOhbO2Phfp28sLNGmlmEQgDH9lay0T0orWk0HoYDp0rXGDLi7rVfo7zW5u7tYvoh1Cea-0Rx05al1NOD5jCwIZKZzZg1y1LMCcoLUhExN9gtnQ_SXrhQY7ewMTtfI2Z61tA11TfV632tEkbj9bSg44kKyS_Lwwe_iO5y7koEz6Hw
echo $token
kubcetl --options
kubectl --options
kubectl options
rm ~/.kube/config 
ls
kubcetl get clusterinfo
kubcetl get cluster
kubectl get clusterinfo
kubectl get node -o wide
kubctl get node -o wide
kubectl get node -o wide
kubectl get node 
kubectl get node
kubectl get pods
cp config ~/.kube/config
kubectl get node
kubectl get node -o wide
kubectl get clusteringo
kubectl get clusterinfo
kubectl get server
kubectl get server --help
kubectl describe node master
ifconfig
kubectl get pod -o wide
kubectl --server --hekp
kubectl --server --help
kubectl --server cluster-info
kubectl get cluster-infor
kubectl get cluster-info
kubectl get --server=cluster-info
kubectl get --server --help
kubectl  --server --help
kubectl get cluster
kubectl get clusters
kubectl cluster-info
rm ~/.kube/config 
kubectl --server=https://172.31.89.195:6443 --certificate-authority /etc/kubernetes/pki/ca.crt --token $token get pod
ls
cp dev-tom.conf jenkins.conf
vim jenkins.conf 
echo $token 
vim jenkins.conf 
kubectl --kubecofig jenkins.conf get pod
kubectl --kubeconfig jenkins.conf get pod
kubectl create role --help
kubectl create role cicd-role --verb=create,update,list --resource=deployment.apps,services --dry-run=client -o yaml > ci-cd.yaml
cp config ~/.kube/config
kubectl create role cicd-role --verb=create,update,list --resource=deployment.apps,services --dry-run=client -o yaml > cicd-role.yaml
vim cicd-role.yaml 
kubectl apply -f cicd-role.yaml 
kubectl create rolebinding --hekp
kubectl create rolebinding --help
kubectl create rolebinding cicd-binding --role=cicd-role --serviceaccount=default.jenkins --dry-run=client -o yaml > cicd-roledinging.yaml
kubectl create rolebinding cicd-binding --role=cicd-role --serviceaccount=default:jenkins --dry-run=client -o yaml > cicd-roledinging.yaml
ls
rm cicd-roledinging.yaml
kubectl create rolebinding cicd-binding --role=cicd-role --serviceaccount=default:jenkins --dry-run=client -o yaml > cicd-binding.yaml
vim cicd-binding.yaml 
kubectl apply -f cicd-binding.yaml 
kubectl describe role-binding cicd-binding.yaml 
kubectl describe role-binding cicd-binding
kubectl describe rolebinding cicd-binding
kubectl auth  can-i create  --as system:serviceaccount:default:jenkins -n default
kubectl auth  can-i create service --as system:serviceaccount:default:jenkins -n default
kubectl auth  can-i create service --as system:serviceaccount:default:jenkins -n my-app
exit
kubectl run debug-pod --image=busybox
kubectl get pod
kubectl run debug-pod-2 --image=busybox -it
kubectl get pod
kubectl exex -it debug-pod-2 --sh
kubectl exec -it debug-pod-2 --sh 
kubectl exec -it debug-pod-2 -- sh 
kubectl delete pod debug-pod debug-pod-2
kubectl get pod
vim bb-pod.yaml
kubectl get pod
kubectl apply -f bb-pod.yaml 
cp config ~/.kube/config 
kubectl apply -f bb-pod.yaml 
kubectl get ns
kubectl apply -f bb-pod.yaml ns default
kubectl apply -f bb-pod.yaml -ns default
kubectl apply ns default -f bb-pod.yaml 
kubectl apply -ns default -f bb-pod.yaml 
kubectl apply --ns default -f bb-pod.yaml 
kubectl apply --help
kubectl apply -f bb-pod.yaml 
vim bb-pod.yaml
kubectl apply -f bb-pod.yaml 
vim bb-pod.yaml
kubectl apply -f bb-pod.yaml 
kubectl get pod
vim bb-pod.yaml
kubectl exec -it busybox-pod -- sh -c "printenv"
kubectl exec -it busybox-pod -- sh -c "while true; do echo hello; sleep 2; done"
exit
kubectl get pod -o yaml
kubectl get pod -o jsonpath={.items[0].metadata.name}
kubectl get pod -o jsonpath={.items[*].metadata.name}
kubectl get pod -o jsonpath={range.items[*]}{.metadata.name}{"\n"}{end}
kubectl get pod -o jsonpath={range .items[*]}{.metadata.name}{"\n"}{end}
kubectl get pod -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}'
kubectl get pod -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.podIP}{"\n"}{end}'
kubectl get pod -o jsonpath='{range .items[*]}{.metadata.name}{"\t"}{.status.podIP}{"\t"}{.status.startTime}{"\n"}{end}'
kubectl get pod -o custom_columns=POD_NAME=.metadata.name,POD_IP=.status.podIP,CREATED_AT=.status.startTime
kubectl get pod -o custom_columns=POD_NAME:.metadata.name,POD_IP:.status.podIP,CREATED_AT:.status.startTime
kubectl get pod -o custom_columns='POD_NAME:.metadata.name,POD_IP:.status.podIP,CREATED_AT:.status.startTime'
vim nginx-deployment.yaml 
kubectl delete deployment nginx-deployment
kubectl apply -f  nginx-deployment.yaml 
kubectl get pod
vim nginx-deployment.yaml 
kubectl get pod
kubectl logs nginx-deployment-bdd57fdcf-tkjd6
kubectl logs nginx-deployment-bdd57fdcf-x7l6h
kubectl logs nginx-deployment-bdd57fdcf-x7l6h -c log-sidecar
vim nginx-deployment.yaml 
kubectl delete deployment nginx-deployment
kubectl apply -f  nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f  nginx-deployment.yaml 
kubectl get pod
kubectl logs nginx-deployment-59f6b56bbb-qc7hw -c mydb-available
kubectl create service clusterip mysb-service --tcp=80:80
kubectl get service
kubectl delete service mysb-service
kubectl create service clusterip mydb-service --tcp=80:80
kubectl get service
kubectl logs nginx-deployment-59f6b56bbb-qc7hw -c mydb-available
kubectl get pod
vim nginx-deployment.yaml 
vim .nginx-deployment.yaml.swp
rm -rf .nginx-deployment.yaml.swp
vim .nginx-deployment.yaml.swp
vim nginx-deployment.yaml 
kubectl delete deployment nginx-deployment
kubectl apply -f  nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f  nginx-deployment.yaml 
kubectl get pod
vim nginx-deployment.yaml 
kubectl get pod
kubectl delete deployment nginx-deployment
kubectl apply -f  nginx-deployment.yaml 
kubectl get pod
kubectl logs nginx-deployment-5fbc968f6f-68lvc
kubectl get pod
vim nginx-deployment.yaml 
kubectl get pod
kubectl describe nginx-deployment-5fbc968f6f-68lvc
kubectl logs nginx-deployment-5fbc968f6f-68lvc
kubectl get pod
kubectl delete deployment nginx-deployment
kubectl apply -f  nginx-deployment.yaml 
kubectl get pod
kubectl logs nginx-deployment-5fbc968f6f-lb8f7
kubectl logs nginx-deployment-5fbc968f6f-lb8f7 -c log-sidecar
vim nginx-deployment.yaml 
kubectl delete deployment nginx-deployment
kubectl apply -f  nginx-deployment.yaml 
kubectl get pod
kubectl logs nginx-deployment-5fddd48865-4gjfp -c log-sidecar
exit
vim myapp-pv.yaml
kubectl apply -f myapp-pv.yaml 
kubectl get pv
kubectl apply -f myapp-pvc.yaml 
vim myapp-pvc.yaml 
kubectl apply -f myapp-pvc.yaml 
kubectk get pvc
kubectl get pvc
kubectl get pv
vim mysql-deployment.yaml
kubectl apply -f mysql-deployment.yaml 
vim mysql-deployment.yaml
kubectl apply -f mysql-deployment.yaml 
vim mysql-deployment.yaml
kubectl apply -f mysql-deployment.yaml 
vim mysql-deployment.yaml
kubectl apply -f mysql-deployment.yaml 
kubectl get pod
kubectl log my-db-98879666f-7mng9
kubectl logs my-db-98879666f-7mng9
kubectl logs my-db-98879666f-7mng9 - wide
kubectl logs my-db-98879666f-7mng9 -o wide
kubectl get pod
kubectl delete pod my-db-98879666f-7mng9
kubectl apply -f mysql-deployment.yaml 
kubectl get pod
vim mysql-deployment.yaml
ls
vim mysql-deployment.yaml
vim myapp-pvc.yaml 
vim mysql-deployment.yaml
kubectl get pod
kubcetl describe my-db-98879666f-xk5vz
kubectl describe my-db-98879666f-xk5vz
kubectl get pod
kubectl logs my-db-98879666f-xk5vz
kubectl logs my-db-98879666f-xk5vz -p
kubectl logs my-db-98879666f-xk5vz -n default
vim mysql-deployment.yaml
kubectl get pod
kubectl delete pod my-db-98879666f-xk5vz
kubectl get pod
kubectl get deployment
kubectl delete deployment my-db
kubectl get pod
kubectl apply -f mysql-deployment.yaml 
kubectl get pod
vim mysql-deployment.yaml
kubectl get pvc
kubectl get pv
vim mysql-deployment.yaml
kubectl get pod
vim mysql-deployment.yaml
kubectl get pod
kubectl describe my-db-98879666f-72fv5 -n default
kubectl logs my-db-98879666f-72fv5 -n default
kubectl get pod
vim mysql-deployment.yaml
kubectl delete deployment my-db
kubectl apply -f mysql-deployment.yaml 
kubectl get pod
kubectl get pod -o wide
vim mysql-deployment.yaml
kubectl delete deployment my-db
kubectl get pod 
kubectl apply -f mysql-deployment.yaml 
kubectl get pod 
exit
kubetl get pod
kubectl get pod
kubectl delete deployment my-db
kubectl get pod
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl get deployment
kubectl delete deployment nginx-deployment
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
kubectl apply -f nginx-deployment.yaml 
vim nginx-deployment.yaml 
exit
ls
vim nginx-deployment.yaml 
cat my-deployment.yaml 
kubectl get pod
kubectl get deployment
kubectl delete deploymentr my-db
kubectl delete deployment my-db
kubectl get pod
kubectl apply -f mysql-deployment.yaml 
kubectl get pod
kubectl apply -f mysql-deployment.yaml 
kubectl get pod
kubectl logs my-db-6c49d9768f-qc96m
kubectl get pod
ls
git init
echo "# Kubernetes" >> README.md
git add README.md
git commit -m "first commit"
git config --global user.email "sandeepgajula0103"
git config --global user.email "sandeepgajula0103@gmail.com"
git config --global user.name "sandeepgajula0103"
git commit -m "first commit"
git branch -M master
git remote add origin git@github.com:sandeepgajula0103/Kubernetes.git
git push -u origin master
ssh -vT git@github.com
sudo ssh -vT git@github.com
ssh -T sandeepgajula@github.com
sudo ssh -T sandeepgajula@github.com
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
ssh key-gen
cd .ssh/
ls
cat authorized_keys 
cd
ssh-add -l
ssh-add
ssh key-gen
ssh-keygen
cd .ssh/
ls
cat id_rsa.pub 
cd ..
git push -u origin master
git add .
git commit -m "kubernetes files"
git push -u origin master
vim .gitignore
git push -u origin master
