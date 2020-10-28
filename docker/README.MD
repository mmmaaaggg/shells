# Docker 常用命令

## 1. 进入容器执行命令

例如
```shell
#查看容器的ID
sudo docker ps
sudo docker exec -it mysql_vnpy /bin/bash
#或者说一下sh 
sudo docker exec -it mysql_vnpy /bin/sh
```
