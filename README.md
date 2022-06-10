```
$ ./deploy.sh

$ az network public-ip list | jq -r '.[].ipAddress'
xxx.xxx.xxx.xxx

$ ssh XXXXXXXXXXXXX@xxx.xxx.xxx.xxx
```
