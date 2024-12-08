apt update
curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/
curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
ssh-keygen
aws s3api create-bucket --bucket awsdamo  --region ap-south-1
apt  install awscli
apt upgrade
apt  install awscli
apt-get install awscli
aws s3api create-bucket --bucket awsdamo  --region ap-south-1
snap install aws-cli
aws s3api create-bucket --bucket awsdamo  --region ap-south-1
apt-get update
apt-get install awscli
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
apt install unzip
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws s3api create-bucket --bucket awsdamo  --region ap-south-1
/usr/local/bin/aws --version
export NAME=ganesh.k8s.local
export KOPS_STATE_STORE=s3://awsdamos
kops create cluster --zones ap-south-1a ${NAME}
kops update cluster --name ganesh.k8s.local --yes --admin
kops get cluster
kubectl get pods
vi sign.yaml
vi signup.yaml
vi sign-svc.yaml
vi signup-svc.yaml
vi ingress.yaml
kubectl apply -f sign.yaml 
kubectl apply -f signup.yaml 
kubectl apply -f sign-svc.yaml 
kubectl apply -f signup-svc.yaml 
kubectl get pods
kubectl get svc
kubectl apply -f ingress.yaml 
kubectl get ingress
kubectl describe ingress auth-ingress
helm repo add eks https://aws.github.io/eks-charts
helm repo update
snap install helm
apt install heml
apt install helm
kubectl create namespace kube-system
kubectl apply -f https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download/v2.5.3/v2_5_3_full.yaml
helm repo add eks https://aws.github.io/eks-charts
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
helm repo add eks https://aws.github.io/eks-charts
helm repo update
helm install aws-load-balancer-controller eks/aws-load-balancer-controller   -n kube-system   --set clusterName=ganesh.k8s.local   --set serviceAccount.create=false   --set serviceAccount.name=aws-load-balancer-controller
kubectl create namespace kube-system
kubectl create namespace kube-systems
kubectl apply -f https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download/v2.5.3/v2_5_3_full.yaml
helm install cert-manager jetstack/cert-manager   --namespace cert-manager   --create-namespace   --set installCRDs=true
helm repo add jetstack https://charts.jetstack.io
helm repo update
helm install cert-manager jetstack/cert-manager   --namespace cert-manager   --create-namespace   --set installCRDs=true
kubectl get ingress.yaml 
kubectl get ingress
kubectl describe ingress
kubectl get svc
kubectl describe signin-service
kubectl get pods
kubectl describe signin-deployment-7889959c69-pz2d9 
kubectl describe pods signin-deployment-7889959c69-pz2d9 
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/2048/2048-namespace.yaml
kubectl get ingress.yaml 
kubectl get ingress
kubectl get pods
kubectl get pods -n 2048
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/2048/2048-ingress.yaml
kubectl apply -k github.com/kubernetes-sigs/aws-load-balancer-controller/deploy/crds?ref=release-2.5
kubectl logs -n kube-system 
kubectl apply -f https://github.com/kubernetes-sigs/aws-load-balancer-controller/releases/download/v2.5.3/crds.yaml
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/rbac-role.yaml
aws iam create-policy     --policy-name ALBIngressControllerIAMPolicy     --policy-document https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/iam-policy.json
curl -sS "https://raw.githubusercontent.com/kubernetes-sigs/aws-alb-ingress-controller/v1.1.4/docs/examples/alb-ingress-controller.yaml"      | sed "s/# - --cluster-name=devCluster/- --cluster-name=attractive-gopher/g"      | kubectl apply -f -
kubectl logs -n kube-system 
kubectl logs -n kube-system $(kubectl get po -n kube-system | egrep -o alb-ingress[a-zA-Z0-9-]+)
kubectl apply -f ingress.yaml 
kubectl get ingress
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install nginx-ingress ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
vi nginx-ingress.yaml
kubectl apply -f nginx-ingress.yaml 
kubectl get pods -n kube-system | grep aws-load-balancer
kubectl describe pod aws-load-balancer-controller-76749f9984-g9dw6 -n kube-system
kubectl get secret aws-load-balancer-webhook-tls -n kube-system
openssl req -x509 -newkey rsa:4096 -keyout cert.key -out cert.crt -days 365 -nodes -subj "/CN=aws-load-balancer-webhook-service.kube-system.svc"
kubectl create secret tls aws-load-balancer-webhook-tls   --cert=cert.crt   --key=cert.key   -n kube-system
kubectl get secret aws-load-balancer-webhook-tls -n kube-system
kubectl delete pod -l app=aws-load-balancer-controller -n kube-system
kubectl get pods -n kube-system
kubectl get pods
kubectl delete pod -l aws-load-balancer-controller-76749f9984-g9dw6 -n kube-system
kubectl logs -l app=aws-load-balancer-controller -n kube-system
kubectl apply -f ingress.yaml 
kubectl get ingress
kubectl apply -f nginx-ingress.yaml 
vi ingress.yaml 
kubectl apply -f ingress.yaml 
kubectl get pods -n ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml
kubectl edit deployment ingress-nginx-controller -n ingress-nginx
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.44.0/deploy/static/provider/cloud/deploy.yaml
helm uninstall ingress-nginx -n ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
helm uninstall ingress-nginx -n ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
kubectl create ns ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx
git clone https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx
kubectl apply -f https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx
helm install -f https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx
helm install https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
kubectl delete serviceaccount ingress-nginx -n ingress-nginx
kubectl delete deployment ingress-nginx-controller -n ingress-nginx
kubectl delete pod -l app.kubernetes.io/name=ingress-nginx -n ingress-nginx
kubectl delete namespace ingress-nginx
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
helm install new-ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
kubectl delete ingressclass nginx
helm install new-ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
helm install new-ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginxx --create-namespace
kubectl delete serviceaccount ingress-nginx -n ingress-nginx
kubectl delete deployment ingress-nginx-controller -n ingress-nginx
kubectl delete pod -l app.kubernetes.io/name=ingress-nginx -n ingress-nginx
kubectl delete namespace ingress-nginx
kubectl delete ingressclass nginx
helm install new-ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
kubectl delete serviceaccount ingress-nginx -n ingress-nginx
kubectl delete deployment ingress-nginx-controller -n ingress-nginx
kubectl delete pod -l app.kubernetes.io/name=ingress-nginx -n ingress-nginx
kubectl delete namespace ingress-nginx
kubectl delete ingressclass nginx
helm install new-ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace
helm install ingress-nginx ingress-nginx/ingress-nginx -f values.yml -n ingress-nginx
vi values.yml
helm install ingress-nginx ingress-nginx/ingress-nginx -f values.yml -n ingress-nginx
kubectl delete serviceaccount ingress-nginx -n ingress-nginx
kubectl delete deployment ingress-nginx-controller -n ingress-nginx
kubectl delete pod -l app.kubernetes.io/name=ingress-nginx -n ingress-nginx
kubectl delete namespace ingress-nginx
kubectl delete ingressclass nginx
helm install ingress-nginx ingress-nginx/ingress-nginx -f values.yml -n ingress-nginx
mkdir
mkdir nginx
cd nginx/
git clone https://github.com/kubernetes/ingress-nginx.git
ls
cd ingress-nginx/
ls
cd deploy/
ls
cd static/
ls
cd provider/
ls
cd aws
ls
kubectl apply -f deploy.yaml 
kubectl get pods -n kube-system | grep alb
kubectl describe alb-ingress-controller-5b45b6ddf7-xqn6x 
kubectl describe describe alb-ingress-controller-5b45b6ddf7-xqn6x 
kubectl describe pods alb-ingress-controller-5b45b6ddf7-xqn6x 
kubectl logs alb-ingress-controller-5b45b6ddf7-xqn6x -n kube-system
kubectl get deployment -n kube-system
kops delete --cluster ${NAME}
kops --delete --cluster ${NAME}
kops delete --cluster $[NAME]
kops delete cluster --name ganesh.k8s.local --yes
kops delete cluster --name ganesh.k8s.local --KOPS_STATE_STORE=S3://awsdamo --yes
export KOPS_STATE_STORE=s3://awsdamo/
kops delete cluster --name ganesh.k8s.local --yes
export KOPS_STATE_STORE=s3://awsdamos/
kops delete cluster --name ganesh.k8s.local --yes
cd ../
cd /
ls
exit
