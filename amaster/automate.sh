 sudo sh -c "echo -c '\n192.168.59.1 amaster.burrency amaster\n192.168.59.2 kmaster.burrency kmaster\n192.168.59.3 kworker.burrency kworker' >>  /etc/hosts"
 ssh-keygen -t rsa -N "" -f /home/vagrant/.ssh/id_rsa
 echo 'vagrant' > /home/vagrant/password.txt
 ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub  192.168.59.2
 ssh-copy-id -i /home/vagrant/.ssh/id_rsa.pub  192.168.59.3
 sudo apt-get update -y 
 sudo apt install python3-pip -y 
 git clone https://github.com/kubernetes-sigs/kubespray.git
 cd  kubespray/
 sh -c "echo    'ansible\nansible-core\ncryptography\njinja2\nnetaddr\npbr\njmespath\nruamel.yaml\nruamel.yaml.clib\nMarkupSafe'  | tee   requirements.txt"
 sudo pip3 install -r requirements.txt
 cp -rfp inventory/sample inventory/mycluster
 declare -a IPS=( 192.168.59.2  192.168.59.3)
 CONFIG_FILE=inventory/mycluster/hosts.yml python3 contrib/inventory_builder/inventory.py ${IPS[@]} 
 cat  inventory/mycluster/hosts.yml 
 ansible-playbook -i inventory/mycluster/hosts.yml --become --become-user=root cluster.yml



