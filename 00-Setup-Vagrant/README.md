## Now provision three virtual machines with following commands:

```
cd vagrant-setup/devops
```
```
#vagrant.exe status
Current machine states:

master                    poweroff (virtualbox)
worker1                   not created (virtualbox)
worker2                   not created (virtualbox)

```

```
#vagrant.exe up master
```

```
λ vagrant.exe status
Current machine states:

master                    running (virtualbox)
worker1                   not created (virtualbox)
worker2                   not created (virtualbox)

```
## Login to master node 

```
vagrant.exe ssh master
sudo su - 
---

