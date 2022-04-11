 sudo sh -c "echo -c '\n192.168.59.1 amaster.burrency amaster\n192.168.59.2 kmaster.burrency kmaster\n192.168.59.3 kworker.burrency kworker' >>  /etc/hosts"
 curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
 sudo cp /etc/kubernetes/admin.conf /home/vagrant/config
 mkdir .kube
 mv config .kube/
 sudo chown $(id -u):$(id -g ) $HOME/.kube/config
 kubectl version
 kubectl get nodes




