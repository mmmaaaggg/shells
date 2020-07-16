#### 参考文献：[使用Docker搭建svn服务器教程](https://www.cnblogs.com/daryl-blog/p/11369577.html)
---

### svn的docker搭建
```
docker run --restart always --name redm_axure -d -v /root/dockers/svn:/var/opt/svn -p 13690:3690 garethflowers/svn-server
```
* /root/dockers/svn为宿主机的文件目录，/var/opt/svn为容器内的文件目录
* --restart always命令可以实现容器在宿主机开机时自启动
* -p 3690:3690表示将宿主机的3690端口映射到容器的3690端口，此端口为svn服务的默认端口，可以根据需要自行修改

## 创建svn仓库和账户
### 进入容器中进行配置
```
docker exec -it redm_axure /bin/sh
```
### 创建名称为svn的资源仓库
```
svnadmin create redm_axure
```
创建成功后svn目录内应该包含以下文件:

> README.txt conf db format hooks locks

### 资源仓库配置，修改svnserve.conf
```
anon-access = none             # 匿名用户不可读写，也可设置为只读 read
auth-access = write            # 授权用户可写
password-db = passwd           # 密码文件路径，相对于当前目录
authz-db = authz               # 访问控制文件
realm = /var/opt/svn/redm_axure       # 认证命名空间，会在认证提示界面显示，并作为凭证缓存的关键字，可以写仓库名称比如svn
```

### 配置账号与密码，修改 passwd文件，格式为“账号 = 密码”
```
[users]
# harry = harryssecret
# sally = sallyssecret
admin = Jicredm123
```

### 配置账户权限，修改 authz文件
```
[groups]
owner = admin
[/]               # / 表示所有仓库
admin = rw        # 用户 admin 在所有仓库拥有读写权限
[svn:/]           # 表示以下用户在仓库 svn 的所有目录有相应权限
@owner = rw       # 表示 owner 组下的用户拥有读写权限
```

## 拉取svn
```
svn co svn://127.0.0.1:3690/redm_axure
```



