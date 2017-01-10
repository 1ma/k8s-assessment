# k8s-assessment


## Setup

```bash
$ vagrant up

$ vagrant ssh k8s-master

$ sudo /vagrant/master.sh

$ exit

$ vagrant ssh k8s-node

# fill TOKEN on /vagrant/node.sh with the value from master

$ sudo /vagrant/node.sh
```
